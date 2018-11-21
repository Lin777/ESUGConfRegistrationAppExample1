"
User is a class for represent a INVOICE table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERInvoice,
	#superclass : #SDActiveRecord,
	#instVars : [
		'amount',
		'paid',
		'coupon'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #accessing }
ERInvoice >> amount [
	^ amount
]

{ #category : #accessing }
ERInvoice >> amount: anObject [
	amount := anObject
]

{ #category : #accessing }
ERInvoice >> coupon [
	^ coupon
]

{ #category : #accessing }
ERInvoice >> coupon: anObject [
	coupon := anObject
]

{ #category : #initialization }
ERInvoice >> initialize [
	super initialize
]

{ #category : #accessing }
ERInvoice >> paid [
	^ paid
]

{ #category : #accessing }
ERInvoice >> paid: anObject [
	paid := anObject
]
