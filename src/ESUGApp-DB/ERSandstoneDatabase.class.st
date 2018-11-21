Class {
	#name : #ERSandstoneDatabase,
	#superclass : #ERDatabase,
	#instVars : [
		'connection'
	],
	#classVars : [
		'WriteMutex'
	],
	#category : #'ESUGApp-DB'
}

{ #category : #initialization }
ERSandstoneDatabase class >> initialize [
	"self initialize"

	SDActiveRecord warmUpAllClasses
]

{ #category : #adding }
ERSandstoneDatabase >> addAccount: aAccount [
	aAccount save.
	^ aAccount 
]

{ #category : #adding }
ERSandstoneDatabase >> addAffiliationInfo: anAfiliationInfo [
	anAfiliationInfo save.
	^ anAfiliationInfo 
]

{ #category : #adding }
ERSandstoneDatabase >> addAttendee: anAccount toConference: aConference [
	anAccount addConference: aConference. 
 anAccount save. 
 ^ aConference
]

{ #category : #adding }
ERSandstoneDatabase >> addConference: aConference [
	aConference save.
	^ aConference 
]

{ #category : #adding }
ERSandstoneDatabase >> addCoupon: aCoupon [
	aCoupon save.
	^ aCoupon 
]

{ #category : #adding }
ERSandstoneDatabase >> addDaysAssist: aDays [
	aDays save.
	^ aDays 
]

{ #category : #adding }
ERSandstoneDatabase >> addDiet: aDiet [
	aDiet save.
	^ aDiet 
]

{ #category : #adding }
ERSandstoneDatabase >> addInvoice: aInvoice [
	aInvoice save.
	^ aInvoice 
]

{ #category : #adding }
ERSandstoneDatabase >> addTask: aTask toUser: aUser [

 aUser save. 
 ^ aUser 

]

{ #category : #adding }
ERSandstoneDatabase >> addUser: aUser [

 aUser save. 
 ^ aUser
]

{ #category : #adding }
ERSandstoneDatabase >> findUserByEmail: aString [ 

 ^ ERUser find: [ :each | each email = aString]
]

{ #category : #adding }
ERSandstoneDatabase >> updateUser: aUser [
	
]
