Class {
	#name : #ERRegisterWithBootstrap,
	#superclass : #ERRegisterUser,
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERRegisterWithBootstrap >> additionalInformation: anObject [
	additionalInformation
		additionalText:
			(self getInputTextFromTemplate: additionalInformation additionalText).
	additionalInformation 
		keywords:
			(self getInputTextFromTemplate: additionalInformation keywords)
]

{ #category : #accessing }
ERRegisterWithBootstrap >> affiliationInformation: anObject [
	affiliationInformation
		organizationAddress: (self getInputTextFromTemplate: anObject organizationAddress).
	affiliationInformation
		keywords: (self getInputTextFromTemplate: anObject keywords).
	
]

{ #category : #accessing }
ERRegisterWithBootstrap >> conferenceOptions: anObject [
]

{ #category : #accessing }
ERRegisterWithBootstrap >> getInputTextFromTemplate: anObject [
	^ ERTextInputComponent new
		id: anObject id;
		name: anObject id;
		type: anObject type;
		label: anObject label;
		callback: anObject callback;
		yourself
]

{ #category : #accessing }
ERRegisterWithBootstrap >> renderContentOn: html [
	
]

{ #category : #accessing }
ERRegisterWithBootstrap >> userInformation: anObject [
	
]
