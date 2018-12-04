Class {
	#name : #ERTemplateAdditionalInformationRegister,
	#superclass : #Object,
	#instVars : [
		'keywords',
		'additionalText'
	],
	#category : #'ESUGApp-Templates'
}

{ #category : #accessing }
ERTemplateAdditionalInformationRegister >> additionalText [
	^ additionalText
]

{ #category : #accessing }
ERTemplateAdditionalInformationRegister >> additionalText: anObject [
	additionalText := anObject
]

{ #category : #accessing }
ERTemplateAdditionalInformationRegister >> keywords [
	^ keywords
]

{ #category : #accessing }
ERTemplateAdditionalInformationRegister >> keywords: anObject [
	keywords := anObject
]
