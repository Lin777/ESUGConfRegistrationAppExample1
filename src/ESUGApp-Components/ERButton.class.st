Class {
	#name : #ERButton,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'type',
		'label',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERButton class >> id: aId type: aType label: aLabel callback: aBlock [ 
	^ self new
		id: aId;
		type: aType;
		callback: aBlock;
		label: aLabel;
		yourself
]

{ #category : #accessing }
ERButton >> callback [
	^ callback
]

{ #category : #accessing }
ERButton >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERButton >> id [
	^ id
]

{ #category : #accessing }
ERButton >> id: anObject [
	id := anObject
]

{ #category : #accessing }
ERButton >> label [
	^ label
]

{ #category : #accessing }
ERButton >> label: anObject [
	label := anObject
]

{ #category : #rendering }
ERButton >> renderContentOn: html [
	html button
		id: self id;
		type: self type;
		class: 'btn btn-lg btn-block';
		callback: self callback;
		with: self label
]

{ #category : #accessing }
ERButton >> type [
	^ type
]

{ #category : #accessing }
ERButton >> type: anObject [
	type := anObject
]
