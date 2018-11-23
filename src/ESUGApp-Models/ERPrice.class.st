"
User is a class for represent a PRICE table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERPrice,
	#superclass : #SDActiveRecord,
	#instVars : [
		'feePricingType',
		'price'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #'as yet unclassified' }
ERPrice class >> earlybirdFee [
	^ (self new) feePricingType: 'Earlybird'; yourself .
]

{ #category : #'as yet unclassified' }
ERPrice class >> stantdardFee [
	^ (self new) feePricingType: 'Standard'; yourself.
]

{ #category : #tests }
ERPrice class >> testPriceEarlybirdFee: aPrice [
	^ (self earlybirdFee ) price: aPrice .
]

{ #category : #tests }
ERPrice class >> testPriceStandardFee: aPrice [
	^ (self stantdardFee ) price: aPrice .
]

{ #category : #accessing }
ERPrice >> feePricingType [
	^ feePricingType
]

{ #category : #accessing }
ERPrice >> feePricingType: anObject [
	feePricingType := anObject
]

{ #category : #initialization }
ERPrice >> initialize [
	super initialize
]

{ #category : #accessing }
ERPrice >> price [
	^ price
]

{ #category : #accessing }
ERPrice >> price: anObject [
	price := anObject
]
