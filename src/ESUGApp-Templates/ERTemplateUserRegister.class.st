Class {
	#name : #ERTemplateUserRegister,
	#superclass : #Object,
	#instVars : [
		'firstName',
		'lastName',
		'registerEmail',
		'registerPassword',
		'registerConfirmPassword'
	],
	#category : #'ESUGApp-Templates'
}

{ #category : #accessing }
ERTemplateUserRegister >> firstName [
	^ firstName
]

{ #category : #accessing }
ERTemplateUserRegister >> firstName: anObject [
	firstName := anObject
]

{ #category : #accessing }
ERTemplateUserRegister >> lastName [
	^ lastName
]

{ #category : #accessing }
ERTemplateUserRegister >> lastName: anObject [
	lastName := anObject
]

{ #category : #accessing }
ERTemplateUserRegister >> registerConfirmPassword [
	^ registerConfirmPassword
]

{ #category : #accessing }
ERTemplateUserRegister >> registerConfirmPassword: anObject [
	registerConfirmPassword := anObject
]

{ #category : #accessing }
ERTemplateUserRegister >> registerEmail [
	^ registerEmail
]

{ #category : #accessing }
ERTemplateUserRegister >> registerEmail: anObject [
	registerEmail := anObject
]

{ #category : #accessing }
ERTemplateUserRegister >> registerPassword [
	^ registerPassword
]

{ #category : #accessing }
ERTemplateUserRegister >> registerPassword: anObject [
	registerPassword := anObject
]
