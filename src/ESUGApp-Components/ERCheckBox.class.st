Class {
	#name : #ERCheckBox,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'callback',
		'label',
		'name'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERCheckBox >> callback [
	^ callback
]

{ #category : #accessing }
ERCheckBox >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERCheckBox >> id [
	^ id
]

{ #category : #accessing }
ERCheckBox >> id: anObject [
	id := anObject
]

{ #category : #initialization }
ERCheckBox >> initialize [
	super initialize.
	name := 'days[]'
]

{ #category : #accessing }
ERCheckBox >> label [
	^ label
]

{ #category : #accessing }
ERCheckBox >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERCheckBox >> name1 [
	^ name
]

{ #category : #accessing }
ERCheckBox >> name: anObject [
	name := anObject
]

{ #category : #rendering }
ERCheckBox >> renderContentOn: html [
	html div
		class: 'form-check form-check-inline';
		with: [ html checkbox
				id: self id;
				class: 'form-check-input';
				attributeAt: 'value' put: 'option1';
				name: self name1;
				callback: self callback .
			html label
				class: 'form-check-label';
				with: self label  ]
]
