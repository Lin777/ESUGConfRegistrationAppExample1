Class {
	#name : #ERRadioButtonComponents,
	#superclass : #WAComponent,
	#instVars : [
		'label',
		'checked',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERRadioButtonComponents >> callback [
	^ callback
]

{ #category : #accessing }
ERRadioButtonComponents >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERRadioButtonComponents >> checked [
	^ checked
]

{ #category : #accessing }
ERRadioButtonComponents >> checked: anObject [
	checked := anObject
]

{ #category : #accessing }
ERRadioButtonComponents >> label [
	^ label
]

{ #category : #accessing }
ERRadioButtonComponents >> label: anObject [
	label := anObject
]

{ #category : #rendering }
ERRadioButtonComponents >> renderContentOn: html [
	html label
		class: 'radio-inline';
		with: [ html radioButton
				name: 'optRadio';
				checked: self checked ;
				with: self label;
				callback: self callback ]
]
