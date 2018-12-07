Class {
	#name : #ERUserAccount,
	#superclass : #SDActiveRecord,
	#instVars : [
		'firstName',
		'lastName',
		'email',
		'password'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #'as yet unclassified' }
ERUserAccount class >> hashPassword: aString [

 ^ aString 
  ifEmpty: [0 asString] 
  ifNotEmpty: [(GRPlatform current secureHashFor: aString) asString].

]

{ #category : #accessing }
ERUserAccount >> email [
	^ email
]

{ #category : #accessing }
ERUserAccount >> email: anObject [
	email := anObject
]

{ #category : #accessing }
ERUserAccount >> firstName [
	^ firstName
]

{ #category : #accessing }
ERUserAccount >> firstName: anObject [
	firstName := anObject
]

{ #category : #accessing }
ERUserAccount >> lastName [
	^ lastName
]

{ #category : #accessing }
ERUserAccount >> lastName: anObject [
	lastName := anObject
]

{ #category : #accessing }
ERUserAccount >> password [
	^ password
]

{ #category : #accessing }
ERUserAccount >> password: anObject [
	password := anObject
]
