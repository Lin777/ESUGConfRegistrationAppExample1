Class {
	#name : #ERAdministrationLoginView,
	#superclass : #WAComponent,
	#instVars : [
		'email',
		'password'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationLoginView >> email [
	^ email
]

{ #category : #accessing }
ERAdministrationLoginView >> email: anObject [
	email := anObject
]

{ #category : #rendering }
ERAdministrationLoginView >> loginFailed [
]

{ #category : #accessing }
ERAdministrationLoginView >> password [
	^ password
]

{ #category : #accessing }
ERAdministrationLoginView >> password: anObject [
	password := anObject
]

{ #category : #rendering }
ERAdministrationLoginView >> renderButton: html [
	html button
		id: 'loginbutton';
		type: 'submit';
		class: 'btn btn-lg btn-block';
		callback: [ self validateLogin ];
		with: 'Login'
]

{ #category : #rendering }
ERAdministrationLoginView >> renderContentOn: html [
		html render: (ERLoginComponent controller: ERLoginController new )
	
]

{ #category : #rendering }
ERAdministrationLoginView >> validateLogin [
	| user |
	user := self session findUserByEmail: self email.
	(user notNil and: [ user password = self password ])
		ifTrue: [ self answer: user ]
		ifFalse: [ self loginFailed ]
]
