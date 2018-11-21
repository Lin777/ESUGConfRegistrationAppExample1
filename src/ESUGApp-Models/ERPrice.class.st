"
User is a class for represent a PRICE table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERPrice,
	#superclass : #SDActiveRecord,
	#instVars : [
		'freePricingType',
		'price'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #accessing }
ERPrice >> freePricingType [
	^ freePricingType
]

{ #category : #accessing }
ERPrice >> freePricingType: anObject [
	freePricingType := anObject
]

{ #category : #accessing }
ERPrice >> price [
	^ price
]

{ #category : #accessing }
ERPrice >> price: anObject [
	price := anObject
]
