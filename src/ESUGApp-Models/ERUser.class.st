"
User is a class for represent a USER table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERUser,
	#superclass : #SDActiveRecord,
	#instVars : [
		'email',
		'password',
		'rol'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #'as yet unclassified' }
ERUser class >> email: aEmail password: aPassword [
	^ self new email: aEmail; password: aPassword; yourself 
]

{ #category : #'as yet unclassified' }
ERUser class >> hashPassword: aString [

 ^ aString 
  ifEmpty: [0] 
  ifNotEmpty: [GRPlatform current secureHashFor: aString].

]

{ #category : #tests }
ERUser class >> testUser: aString [ 
	^ (self new) email: (aString, '@gmail.com'); password: (ERUser hashPassword: '12345678') asString; rol: 'attendee'; yourself .
	
]

{ #category : #accessing }
ERUser >> email [
	^ email
]

{ #category : #accessing }
ERUser >> email: anObject [
	email := anObject
]

{ #category : #initialization }
ERUser >> initialize [
	super initialize.
	rol := 'attendee'.
	
]

{ #category : #accessing }
ERUser >> password [
	^ password
]

{ #category : #accessing }
ERUser >> password: anObject [
	password := anObject
]

{ #category : #accessing }
ERUser >> rol [
	^ rol
]

{ #category : #accessing }
ERUser >> rol: anObject [
	rol := anObject
]
