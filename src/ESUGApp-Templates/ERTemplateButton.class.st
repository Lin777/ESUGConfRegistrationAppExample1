Class {
	#name : #ERTemplateButton,
	#superclass : #Object,
	#instVars : [
		'id',
		'label',
		'type',
		'callback'
	],
	#category : #'ESUGApp-Templates'
}

{ #category : #accessing }
ERTemplateButton >> callback [
	^ callback
]

{ #category : #accessing }
ERTemplateButton >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERTemplateButton >> id [
	^ id
]

{ #category : #accessing }
ERTemplateButton >> id: anObject [
	id := anObject
]

{ #category : #accessing }
ERTemplateButton >> label [
	^ label
]

{ #category : #accessing }
ERTemplateButton >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERTemplateButton >> type [
	^ type
]

{ #category : #accessing }
ERTemplateButton >> type: anObject [
	type := anObject
]
