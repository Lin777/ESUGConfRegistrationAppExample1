Class {
	#name : #ERTextAreaFieldLabel,
	#superclass : #ERComponentLabel,
	#instVars : [
		'textType',
		'callback',
		'lines'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'instance creation' }
ERTextAreaFieldLabel class >> label: aString callback: aBlock [
	| instance |
	instance := self new.
	instance label: aString.
	instance callback: aBlock.
	^ instance
]

{ #category : #accessing }
ERTextAreaFieldLabel >> callback [
	^ callback
]

{ #category : #accessing }
ERTextAreaFieldLabel >> callback: anObject [
	callback := anObject
]

{ #category : #initialization }
ERTextAreaFieldLabel >> initialize [
	super initialize.
	textType := 'text'.
	lines := 3.
]

{ #category : #accessing }
ERTextAreaFieldLabel >> lines [
	^ lines
]

{ #category : #accessing }
ERTextAreaFieldLabel >> lines: anObject [
	lines := anObject
]

{ #category : #rendering }
ERTextAreaFieldLabel >> renderContentOn: html [ 	
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: self id;
				with: self label.
			html mdlTextArea
				id: self id;
				rows: self lines ;
				type: self textType;
				callback: self callback. ]
]

{ #category : #accessing }
ERTextAreaFieldLabel >> textType [
	^ textType
]

{ #category : #accessing }
ERTextAreaFieldLabel >> textType: anObject [
	textType := anObject
]
