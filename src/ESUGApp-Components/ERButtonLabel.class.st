Class {
	#name : #ERButtonLabel,
	#superclass : #ERComponentLabel,
	#instVars : [
		'callback',
		'class',
		'type'
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

{ #category : #'instance creation' }
ERButtonLabel class >> label: aString callback: aBlock id: anId [
	| instance |
	instance := self new.
	instance label: aString.
	instance callback: aBlock.
	instance id: anId.
	^ instance
]

{ #category : #'instance creation' }
ERButtonLabel class >> label: aString callback: aBlock id: anId type: aType [
	| instance |
	instance := self new.
	instance label: aString.
	instance callback: aBlock.
	instance id: anId.
	instance type: aType .
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
	class := ''.
	type := 'button'
]

{ #category : #rendering }
ERButtonLabel >> renderContentOn: html [
	"html render: button .
	"	html mdlButton
		raised;
		accentColor;
		rippleEffect;
		colored;
		type: self type;
		id: self id;
		class: self class1;
		callback: self callback;
		with: self label.
]

{ #category : #accessing }
ERButtonLabel >> type [
	^ type
]

{ #category : #accessing }
ERButtonLabel >> type: anObject [
	type := anObject
]
