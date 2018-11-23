Class {
	#name : #ERLoginController,
	#superclass : #WAObject,
	#instVars : [
		'email',
		'password',
		'store',
		'user1',
		'user2'
	],
	#category : #'ESUGApp-Controllers'
}

{ #category : #accessing }
ERLoginController >> email [
	^ email
]

{ #category : #accessing }
ERLoginController >> email: anObject [
	email := anObject
]

{ #category : #accessing }
ERLoginController >> password [
	^ password
]

{ #category : #accessing }
ERLoginController >> password: anObject [
	password := anObject
]

{ #category : #rendering }
ERLoginController >> validateLogin [
	| aUser |
	aUser := self session database
		validateUserLogin:
			(ERUser new
				email: self email;
				password: self password).
	^ aUser
]
