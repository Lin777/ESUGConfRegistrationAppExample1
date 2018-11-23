Class {
	#name : #ERTestModels,
	#superclass : #TestCase,
	#instVars : [
		'database',
		'store',
		'user1',
		'user2',
		'invoiceWithCoupon',
		'invoiceWtihoutCoupon',
		'couponGold',
		'couponPlatinum',
		'conference',
		'daysAssist',
		'affiliation'
	],
	#category : #'ESUGApp-Test'
}

{ #category : #tests }
ERTestModels >> addUser [
	self database addUser: user1.
]

{ #category : #accessing }
ERTestModels >> database [
	^ database
]

{ #category : #accessing }
ERTestModels >> database: anObject [
	database := anObject
]

{ #category : #factory }
ERTestModels >> defaultStore [
	^ SDMemoryStore new
]

{ #category : #tests }
ERTestModels >> setUp [
	store := self defaultStore.
	SDActiveRecord setStore: store.
	"only want to warm up test models, not anything else that might be in this image"
	SDFooObject warmUp.
	database := ERSandstoneDatabase new.
	ERUser withAllSubclasses do: [ :each | each warmUp ].
	
	user1 := ERUser testUser: 'user1'.
	user2 := ERUser testUser: 'user2'.
	
	affiliation := ERAfiliation testAffiliation: 'AffiliationExample'.
	
	couponGold := ERCoupon testCouponGoldSponsor: 'sponsorGold'.
	couponPlatinum := ERCoupon testCouponPlatinumSponsor: 'sponsorPlatinum'.
	
	conference := ERConference testConference: 'ESUG_2019'.
	
	daysAssist := ERDaysAssist testDaysAssistAllDays .
	
	invoiceWithCoupon := ERInvoice testInvoiceWithCoupon: couponGold .
	invoiceWtihoutCoupon := ERInvoice testInvoiceWithoutCoupon .
	
]

{ #category : #running }
ERTestModels >> tearDown [
	ERUser do: [ :each | [each delete] on: Error do: [] ].
	ERUser coolDown.
	SDFooObject do: [:each | [each delete] on: Error do: [] ].
	ERUser allSubclassesDo: [ :each | each coolDown ].
	Smalltalk garbageCollectMost 
]

{ #category : #tests }
ERTestModels >> testAddAffiliationInformation [
	|affiliationInformation |
	
	affiliationInformation  := self database addAffiliationInfo: affiliation .
	
	self deny: affiliationInformation equals: nil .
]

{ #category : #tests }
ERTestModels >> testAddUser [
	|user|
	
	user := self database addUser: user1.
	
	self deny: user equals: nil .
]

{ #category : #tests }
ERTestModels >> testValidateLoginExistentUser [
	|result|
	self addUser .
	result := database validateUserLogin: user1.
	self deny: (result isNil)
]

{ #category : #tests }
ERTestModels >> testValidateLoginNonExistentUser [
	| result |
	result := database
		validateUserLogin:
			user2.
	self assert: result isNil
]
