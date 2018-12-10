Class {
	#name : #ERTextFieldLabel,
	#superclass : #ERComponentLabel,
	#instVars : [
		'textType',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'instance creation' }
ERTextFieldLabel class >> label: aString callback: aBlock [
	| instance |
	instance := self new.
	instance label: aString.
	instance callback: aBlock.
	^ instance
]

{ #category : #accessing }
ERTextFieldLabel >> callback [
	^ callback
]

{ #category : #accessing }
ERTextFieldLabel >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERTextFieldLabel >> forPassword [
	textType := 'password'
]

{ #category : #initalize }
ERTextFieldLabel >> initialize [
	super initialize.
	textType := 'text'.
]

{ #category : #rendering }
ERTextFieldLabel >> renderContentOn: html [
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: self id;
				with: self label.
			html mdlTextFieldInput
				id: self id;
				type: self textType;
				callback: self callback. ]
]

{ #category : #accessing }
ERTextFieldLabel >> textType [
	^ textType
]

{ #category : #accessing }
ERTextFieldLabel >> textType: anObject [
	textType := anObject
]
