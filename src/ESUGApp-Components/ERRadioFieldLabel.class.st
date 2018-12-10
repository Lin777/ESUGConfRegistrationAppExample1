Class {
	#name : #ERRadioFieldLabel,
	#superclass : #ERComponentLabel,
	#instVars : [
		'list',
		'listValues'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERRadioFieldLabel class >> label: aString list: aList [
	| instance |
	instance := self new.
	instance label: aString.
	instance list: aList.
	^ instance
]

{ #category : #'as yet unclassified' }
ERRadioFieldLabel class >> label: aString list: aList listValues: aListValues [
	| instance |
	instance := self new.
	instance label: aString.
	instance list: aList.
	instance listValues: aListValues.
	^ instance
]

{ #category : #accessing }
ERRadioFieldLabel >> list [
	^ list
]

{ #category : #accessing }
ERRadioFieldLabel >> list: anObject [
	list := anObject
]

{ #category : #accessing }
ERRadioFieldLabel >> listValues [
	^ listValues
]

{ #category : #accessing }
ERRadioFieldLabel >> listValues: anObject [
	listValues := anObject
]

{ #category : #rendering }
ERRadioFieldLabel >> renderContentOn: html [
	html div
		style: 'display: inline-block; width: 150px;';
		with: [ html radioGroup
				callback: [ :value | value crLog ];
				selected: true;
				with: [ :group | 
					self list with: self listValues 
						do: [ :item :value | 
							html mdlRadioContainer
								for: self id;
								rippleEffect;
								with: [ group mdlRadioButton
										id: self id;
										value: value.
									html mdlRadioLabel: [ 
										html text: item , '   ' ] ] ] ] ]
]