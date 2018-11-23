Class {
	#name : #ERComponentButton,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'name',
		'type',
		'class',
		'label',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERComponentButton class >> loginButton [
	^ self new type: 'submit'; class: 'btn btn-lg btn-block'; label: 'Login'; yourself 	

]

{ #category : #'as yet unclassified' }
ERComponentButton class >> nextStepButton [
	^ self new type: 'button'; class: 'btn btn-primary next-step'; label: 'Save and continue'; yourself 	
]

{ #category : #accessing }
ERComponentButton class >> previousButton [
	^ self new type: 'button'; class: 'btn btn-primary prev-step'; label: 'Previous'; yourself 	
]

{ #category : #accessing }
ERComponentButton class >> skipButton [
	^ self new type: 'button'; class: 'btn btn-primary next-step'; label: 'Skip'; yourself 	
]

{ #category : #accessing }
ERComponentButton >> callback [
	^ callback
]

{ #category : #accessing }
ERComponentButton >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERComponentButton >> class1 [
	^ class
]

{ #category : #accessing }
ERComponentButton >> class: anObject [
	class := anObject
]

{ #category : #accessing }
ERComponentButton >> id [
	^ id
]

{ #category : #accessing }
ERComponentButton >> id: anObject [
	id := anObject
]

{ #category : #initialization }
ERComponentButton >> initialize [
	super initialize.
	self callback: [ nil ]
]

{ #category : #accessing }
ERComponentButton >> label [
	^ label
]

{ #category : #accessing }
ERComponentButton >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERComponentButton >> name1 [
	^ name
]

{ #category : #accessing }
ERComponentButton >> name: anObject [
	name := anObject
]

{ #category : #rendering }
ERComponentButton >> renderContentOn: html [
	html button
		id: self id;
		name: self name1;
		type: self type;
		class: self class1;
		callback: self callback;
		with: self label.
]

{ #category : #accessing }
ERComponentButton >> type [
	^ type
]

{ #category : #accessing }
ERComponentButton >> type: anObject [
	type := anObject
]
