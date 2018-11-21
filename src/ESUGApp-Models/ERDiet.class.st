"
User is a class for represent a DIET table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERDiet,
	#superclass : #SDActiveRecord,
	#instVars : [
		'nameDiet'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #initialization }
ERDiet >> initialize [
	super initialize
]

{ #category : #accessing }
ERDiet >> nameDiet [
	^ nameDiet
]

{ #category : #accessing }
ERDiet >> nameDiet: anObject [
	nameDiet := anObject
]
