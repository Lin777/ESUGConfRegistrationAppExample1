Class {
	#name : #ERTextAreaComponent,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'name',
		'type',
		'label',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERTextAreaComponent >> callback [
	^ callback
]

{ #category : #accessing }
ERTextAreaComponent >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERTextAreaComponent >> id [
	^ id
]

{ #category : #accessing }
ERTextAreaComponent >> id: anObject [
	id := anObject
]

{ #category : #accessing }
ERTextAreaComponent >> label [
	^ label
]

{ #category : #accessing }
ERTextAreaComponent >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERTextAreaComponent >> name1 [
	^ name
]

{ #category : #accessing }
ERTextAreaComponent >> name: anObject [
	name := anObject
]

{ #category : #rendering }
ERTextAreaComponent >> renderContentOn: html [
	html div
		class: 'form-group';
		with: [ html label: self label , ':'.
			html textArea
				attributeAt: 'placeholder' put: self label;
				class: 'form-control';
				id: self id;
				name: self name1;
				callback: self callback  ]
]

{ #category : #accessing }
ERTextAreaComponent >> type [
	^ type
]

{ #category : #accessing }
ERTextAreaComponent >> type: anObject [
	type := anObject
]
