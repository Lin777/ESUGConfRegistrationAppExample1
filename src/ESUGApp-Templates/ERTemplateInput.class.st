Class {
	#name : #ERTemplateInput,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'label',
		'type',
		'callback'
	],
	#category : #'ESUGApp-Templates'
}

{ #category : #accessing }
ERTemplateInput >> callback [
	^ callback
]

{ #category : #accessing }
ERTemplateInput >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERTemplateInput >> id [
	^ id
]

{ #category : #accessing }
ERTemplateInput >> id: anObject [
	id := anObject
]

{ #category : #accessing }
ERTemplateInput >> label [
	^ label
]

{ #category : #accessing }
ERTemplateInput >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERTemplateInput >> name1 [
	^ name
]

{ #category : #accessing }
ERTemplateInput >> name: anObject [
	name := anObject
]

{ #category : #accessing }
ERTemplateInput >> type [
	^ type
]

{ #category : #accessing }
ERTemplateInput >> type: anObject [
	type := anObject
]
