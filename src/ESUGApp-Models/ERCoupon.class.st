"
User is a class for represent a TYPECOUPON table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERCoupon,
	#superclass : #SDActiveRecord,
	#instVars : [
		'codeCoupon',
		'typeCoupon'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #accessing }
ERCoupon >> codeCoupon [
	^ codeCoupon
]

{ #category : #accessing }
ERCoupon >> codeCoupon: anObject [
	codeCoupon := anObject
]

{ #category : #initialization }
ERCoupon >> initialize [
	super initialize.
]

{ #category : #accessing }
ERCoupon >> typeCoupon [
	^ typeCoupon
]

{ #category : #accessing }
ERCoupon >> typeCoupon: anObject [
	typeCoupon := anObject
]
