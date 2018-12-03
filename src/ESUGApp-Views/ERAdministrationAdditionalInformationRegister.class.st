Class {
	#name : #ERAdministrationAdditionalInformationRegister,
	#superclass : #WAComponent,
	#instVars : [
		'keywords',
		'additionalText'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationAdditionalInformationRegister >> additionalText [
	^ additionalText
]

{ #category : #accessing }
ERAdministrationAdditionalInformationRegister >> additionalText: anObject [
	additionalText := anObject
]

{ #category : #accessing }
ERAdministrationAdditionalInformationRegister >> keywords [
	^ keywords
]

{ #category : #accessing }
ERAdministrationAdditionalInformationRegister >> keywords: anObject [
	keywords := anObject
]
