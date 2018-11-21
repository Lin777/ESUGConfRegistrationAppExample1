"
User is a class for represent a POLOSIZE table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERPoloSize,
	#superclass : #SDActiveRecord,
	#instVars : [
		'nameSize'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #initialization }
ERPoloSize >> initialize [
	super initialize
]

{ #category : #accessing }
ERPoloSize >> nameSize [
	^ nameSize
]

{ #category : #accessing }
ERPoloSize >> nameSize: anObject [
	nameSize := anObject
]
