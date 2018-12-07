Class {
	#name : #ERButtonLabel,
	#superclass : #ERComponentLabel,
	#instVars : [
		'callback',
		'class'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'instance creation' }
ERButtonLabel class >> label: aString callback: aBlock [
	| instance |
	instance := self new.
	instance label: aString.
	instance callback: aBlock.
	^ instance
]

{ #category : #accessing }
ERButtonLabel >> callback [
	^ callback
]

{ #category : #accessing }
ERButtonLabel >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERButtonLabel >> class1 [
	^ class
]

{ #category : #accessing }
ERButtonLabel >> class: anObject [
	class := anObject
]

{ #category : #rendering }
ERButtonLabel >> initialize [
	super initialize .
	class := ''
]

{ #category : #rendering }
ERButtonLabel >> renderContentOn: html [
	html mdlButton
		raised;
		accentColor;
		rippleEffect;
		type: 'submit';
		with: self label;
		class: self class1;
		callback: self callback.
]
