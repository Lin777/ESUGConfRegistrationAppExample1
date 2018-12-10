Class {
	#name : #ERSelectFieldLabel,
	#superclass : #ERComponentLabel,
	#instVars : [
		'list',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERSelectFieldLabel class >> label: aString callback: aBlock list: aList [
	| instance |
	instance := self new.
	instance label: aString.
	instance callback: aBlock.
	instance list: aList.
	^ instance
]

{ #category : #accessing }
ERSelectFieldLabel >> callback [
	^ callback
]

{ #category : #accessing }
ERSelectFieldLabel >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERSelectFieldLabel >> list [
	^ list
]

{ #category : #accessing }
ERSelectFieldLabel >> list: anObject [
	list := anObject
]

{ #category : #rendering }
ERSelectFieldLabel >> renderContentOn: html [
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: self id;
				with: self label.
			html select
				id: self id;
				list: self list;
				callback: self callback. ]
]