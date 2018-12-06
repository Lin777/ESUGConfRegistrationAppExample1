Class {
	#name : #ERLoginFormsFactory,
	#superclass : #Object,
	#instVars : [
		'user'
	],
	#category : #'ESUGApp-ComponentsFactory'
}

{ #category : #initialization }
ERLoginFormsFactory >> getEmailLogin [
	^ (ERTextInputComponent
				id: 'email'
				name: 'email'
				type: 'text'
				label: 'Email address'
				callback: [ :value | self user email: value asString ])
]

{ #category : #initialization }
ERLoginFormsFactory >> getLoginButton [
	^ ERComponentButton loginButton
		id: 'loginbutton';
		callback: [ self loginUser ]
]

{ #category : #initialization }
ERLoginFormsFactory >> getPasswordLogin [
	^ (ERTextInputComponent
				id: 'password'
				name: 'password'
				type: 'password'
				label: 'Password'
				callback: [ :value | self user password: (ERUser hashPassword: value) asString ])
]
