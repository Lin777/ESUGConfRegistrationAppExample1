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

{ #category : #tests }
ERInvoice class >> testInvoiceWithCoupon: aCoupon [
	^ (self new) amount: '100000'; coupon: aCoupon; paid: true; yourself .
	
]

{ #category : #tests }
ERInvoice class >> testInvoiceWithoutCoupon [
	^ (self new) amount: '100000'; paid: true; yourself .
	
]

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
