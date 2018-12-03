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
	^ aAccount save.
]

{ #category : #adding }
ERSandstoneDatabase >> addAffiliationInfo: anAfiliationInfo [
	^ anAfiliationInfo save.
]

{ #category : #adding }
ERSandstoneDatabase >> addAttendee: anAccount toConference: aConference [
	anAccount addConference: aConference. 
 anAccount save. 
 ^ aConference
]

{ #category : #adding }
ERSandstoneDatabase >> addConference: aConference [
	^ aConference save.
]

{ #category : #adding }
ERSandstoneDatabase >> addCoupon: aCoupon [
	^ aCoupon save.
]

{ #category : #adding }
ERSandstoneDatabase >> addDaysAssist: aDays [
	^ aDays save.
]

{ #category : #adding }
ERSandstoneDatabase >> addDiet: aDiet [
	^ aDiet save.
]

{ #category : #adding }
ERSandstoneDatabase >> addInvoice: aInvoice [
	^ aInvoice save.
]

{ #category : #adding }
ERSandstoneDatabase >> addPrice: aPrice [
	^ aPrice save.
]

{ #category : #adding }
ERSandstoneDatabase >> addTask: aTask toUser: aUser [

 aUser save. 
 ^ aUser 

]

{ #category : #adding }
ERSandstoneDatabase >> addUser: aUser [

 ^ aUser save. 

]

{ #category : #adding }
ERSandstoneDatabase >> addUserifNotExist: aUser [
   
 ^ aUser save. 

]

{ #category : #adding }
ERSandstoneDatabase >> findUserByEmail: aString [ 

 ^ ERUser find: [ :each | each email = aString]
]

{ #category : #adding }
ERSandstoneDatabase >> getAccountByUser: anUser [
	^ ERAccount find: [ :each | each user = anUser ].
	
]

{ #category : #adding }
ERSandstoneDatabase >> getRoleOfAUser: anUser [
	^ anUser role 
]

{ #category : #adding }
ERSandstoneDatabase >> updateUser: aUser [
	
]

{ #category : #adding }
ERSandstoneDatabase >> validateUserLogin: aUser [
	| user |
	user := self findUserByEmail: aUser email.
	(user notNil and: [ user password = aUser password ])
		ifTrue: [ ^ aUser ]
		ifFalse: [ ^ nil ]
]
