Class {
	#name : #ERTextSelectComponent,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'label',
		'listOptions',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERTextSelectComponent class >> id: aId label: aLabel listOption: aList [
	^ self new
		id: aId;
		label: aLabel;
		listOptions: aList;
		yourself
]

{ #category : #'as yet unclassified' }
ERTextSelectComponent class >> id: aId label: aLabel listOption: aList callback: aBlock [
	^ self new
		id: aId;
		label: aLabel;
		listOptions: aList;
		callback: aBlock;
		yourself
]

{ #category : #'as yet unclassified' }
ERTextSelectComponent class >> id: aId listOption: aList [
	^ self new
		id: aId;
		listOptions: aList;
		yourself
]

{ #category : #accessing }
ERTextSelectComponent >> callback [
	^ callback
]

{ #category : #accessing }
ERTextSelectComponent >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERTextSelectComponent >> id [
	^ id
]

{ #category : #accessing }
ERTextSelectComponent >> id: anObject [
	id := anObject
]

{ #category : #accessing }
ERTextSelectComponent >> label [
	^ label
]

{ #category : #accessing }
ERTextSelectComponent >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERTextSelectComponent >> listOptions [
	^ listOptions
]

{ #category : #accessing }
ERTextSelectComponent >> listOptions: anObject [
	listOptions := anObject
]

{ #category : #rendering }
ERTextSelectComponent >> renderContentOn: html [
	html div
		class: 'form-group';
		with: [ html label
				attributeAt: 'for' put: self id;
				with: self label.
			html select
				class: 'form-control';
				id: self id;
				list: self listOptions;
				callback: self callback]
]
