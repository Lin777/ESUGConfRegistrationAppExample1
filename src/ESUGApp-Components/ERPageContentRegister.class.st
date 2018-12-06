Class {
	#name : #ERPageContentRegister,
	#superclass : #WAComponent,
	#instVars : [
		'userInformation',
		'userContactInformation',
		'conferenceOptions',
		'affiliationInformation',
		'additionalInformation',
		'paymentInformation'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERPageContentRegister >> additionalInformation [
	^ additionalInformation
]

{ #category : #accessing }
ERPageContentRegister >> additionalInformation: anObject [
	additionalInformation := anObject
]

{ #category : #accessing }
ERPageContentRegister >> affiliationInformation [
	^ affiliationInformation
]

{ #category : #accessing }
ERPageContentRegister >> affiliationInformation: anObject [
	affiliationInformation := anObject
]

{ #category : #accessing }
ERPageContentRegister >> conferenceOptions [
	^ conferenceOptions
]

{ #category : #accessing }
ERPageContentRegister >> conferenceOptions: anObject [
	conferenceOptions := anObject
]

{ #category : #accessing }
ERPageContentRegister >> paymentInformation [
	^ paymentInformation
]

{ #category : #accessing }
ERPageContentRegister >> paymentInformation: anObject [
	paymentInformation := anObject
]

{ #category : #rendering }
ERPageContentRegister >> renderContentOn: html [ 	
	html render: self userInformation .
]

{ #category : #accessing }
ERPageContentRegister >> userContactInformation [
	^ userContactInformation
]

{ #category : #accessing }
ERPageContentRegister >> userContactInformation: anObject [
	userContactInformation := anObject
]

{ #category : #accessing }
ERPageContentRegister >> userInformation [
	^ userInformation
]

{ #category : #accessing }
ERPageContentRegister >> userInformation: anObject [
	userInformation := anObject
]
