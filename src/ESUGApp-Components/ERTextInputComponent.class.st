Class {
	#name : #ERTextInputComponent,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'name',
		'type',
		'label',
		'callback',
		'value'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERTextInputComponent class >> id: aID name: aName type: aType [
	^ self new
		id: aID;
		name: aName;
		type: aType;
		yourself
]

{ #category : #'as yet unclassified' }
ERTextInputComponent class >> id: aID name: aName type: aType label: aLabel [
	^ self new
		id: aID;
		name: aName;
		type: aType;
		label: aLabel;
		yourself
]

{ #category : #'as yet unclassified' }
ERTextInputComponent class >> id: aID name: aName type: aType label: aLabel callback: aBlock [
	^ self new
		id: aID;
		name: aName;
		type: aType;
		label: aLabel;
		callback: aBlock ;
		yourself
]

{ #category : #accessing }
ERTextInputComponent >> callback [
	^ callback
]

{ #category : #accessing }
ERTextInputComponent >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERTextInputComponent >> id [
	^ id
]

{ #category : #accessing }
ERTextInputComponent >> id: anObject [
	id := anObject
]

{ #category : #rendering }
ERTextInputComponent >> initialize [
	super initialize .
	self callback: [  ]
]

{ #category : #accessing }
ERTextInputComponent >> label [
	^ label
]

{ #category : #accessing }
ERTextInputComponent >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERTextInputComponent >> name1 [
	^ name
]

{ #category : #accessing }
ERTextInputComponent >> name: anObject [
	name := anObject
]

{ #category : #rendering }
ERTextInputComponent >> renderContentOn: html [
	html div
		class: 'form-group';
		with: [ html label: self label, ':'.
			html textInput
				id: self id;
				name: self name1;
				type: self type;
				class: 'form-control';
				callback: self callback ;
				attributeAt: 'placeholder' put: self label]
]

{ #category : #accessing }
ERTextInputComponent >> type [
	^ type
]

{ #category : #accessing }
ERTextInputComponent >> type: anObject [
	type := anObject
]

{ #category : #accessing }
ERTextInputComponent >> value1 [
	^ value
]

{ #category : #accessing }
ERTextInputComponent >> value: anObject [
	value := anObject
]
