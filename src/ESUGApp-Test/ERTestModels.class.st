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
		'affiliation',
		'price1',
		'price2'
	],
	#category : #'ESUGApp-Test'
}

{ #category : #tests }
ERTestModels >> addAffiliationInformation [
	^ self database addAffiliationInfo: affiliation   .
]

{ #category : #tests }
ERTestModels >> addCoupon [
	^ self database addCoupon: couponGold 
]

{ #category : #tests }
ERTestModels >> addDaysAssist [
	^ self database addDaysAssist: daysAssist  .
]

{ #category : #tests }
ERTestModels >> addInvoice [
	^ self database addInvoice: invoiceWtihoutCoupon .
]

{ #category : #tests }
ERTestModels >> addPrice1 [
	^ self database addPrice: price1 .
]

{ #category : #tests }
ERTestModels >> addPrice2 [
	^ self database addPrice: price2 .
]

{ #category : #tests }
ERTestModels >> addUser [
	^ self database addUser: user1.
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
	
	price1 := ERPrice testPriceEarlybirdFee: '200'.
	price2 := ERPrice testPriceStandardFee: '400'.
	
	conference := ERConference testConference: 'ESUG_2019'; prices: (OrderedCollection new add: (self addPrice1); add: (self addPrice2); yourself) .
	
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
ERTestModels >> testAddAccount [
	|anAccount account|
	
	account := ERAccount testAccount: 'account' user: (self addUser) invoice: (self addInvoice) daysAssist: (self addDaysAssist) affiliationInformation: (self addAffiliationInformation).
	
	anAccount   := self database addAccount: account .
	
	self deny: anAccount isNil .
]

{ #category : #tests }
ERTestModels >> testAddAffiliationInformation [
	|affiliationInformation |
	
	affiliationInformation  := self database addAffiliationInfo: affiliation .
	
	self deny: affiliationInformation isNil .
]

{ #category : #tests }
ERTestModels >> testAddConference [
	|aConference |
	
	aConference  := self database addConference: conference .
	
	self deny: aConference isNil .
]

{ #category : #tests }
ERTestModels >> testAddCoupon [
	|aCouponGold aCouponPlatinum |
	
	aCouponGold  := self database addConference: couponGold .
	aCouponPlatinum := self database addConference: couponPlatinum .
	
	self deny: aCouponGold isNil.
	self deny: aCouponPlatinum isNil .
]

{ #category : #tests }
ERTestModels >> testAddDaysAssist [
	|setDays |
	
	setDays  := self database addDaysAssist: daysAssist .
	
	self deny: setDays isNil.
]

{ #category : #tests }
ERTestModels >> testAddInvoiceWithCoupon [
	|coupon invoice |
	
	coupon := self addCoupon .
	invoice  := self database addInvoice: (ERInvoice testInvoiceWithCoupon: coupon )  .
	
	self deny: invoice isNil.
]

{ #category : #tests }
ERTestModels >> testAddInvoiceWithoutCoupon [
	|invoice |
	
	invoice  := self database addInvoice: invoiceWtihoutCoupon  .
	
	self deny: invoice isNil.
]

{ #category : #tests }
ERTestModels >> testAddPrice [
	|aPrice |
	
	aPrice  := self database addConference: price1 .
	
	self deny: aPrice isNil .
]

{ #category : #tests }
ERTestModels >> testAddUser [
	|user|
	
	user := self database addUser: user1.
	
	self deny: user isNil .
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
