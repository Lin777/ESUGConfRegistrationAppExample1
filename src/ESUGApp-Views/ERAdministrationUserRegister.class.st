Class {
	#name : #ERAdministrationUserRegister,
	#superclass : #WAComponent,
	#instVars : [
		'firstName',
		'lastName',
		'registerEmail',
		'registerPassword',
		'registerConfirmPassword'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationUserRegister >> firstName [
	^ firstName
]

{ #category : #accessing }
ERAdministrationUserRegister >> firstName: anObject [
	firstName := anObject
]

{ #category : #accessing }
ERAdministrationUserRegister >> lastName [
	^ lastName
]

{ #category : #accessing }
ERAdministrationUserRegister >> lastName: anObject [
	lastName := anObject
]

{ #category : #accessing }
ERAdministrationUserRegister >> registerConfirmPassword [
	^ registerConfirmPassword
]

{ #category : #accessing }
ERAdministrationUserRegister >> registerConfirmPassword: anObject [
	registerConfirmPassword := anObject
]

{ #category : #accessing }
ERAdministrationUserRegister >> registerEmail [
	^ registerEmail
]

{ #category : #accessing }
ERAdministrationUserRegister >> registerEmail: anObject [
	registerEmail := anObject
]

{ #category : #accessing }
ERAdministrationUserRegister >> registerPassword [
	^ registerPassword
]

{ #category : #accessing }
ERAdministrationUserRegister >> registerPassword: anObject [
	registerPassword := anObject
]
