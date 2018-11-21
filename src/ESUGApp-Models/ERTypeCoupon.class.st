Class {
	#name : #ERTypeCoupon,
	#superclass : #SDActiveRecord,
	#instVars : [
		'sponsor',
		'percentage',
		'amountOfPeople'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #accessing }
ERTypeCoupon >> amountOfPeople [
	^ amountOfPeople
]

{ #category : #accessing }
ERTypeCoupon >> amountOfPeople: anObject [
	amountOfPeople := anObject
]

{ #category : #accessing }
ERTypeCoupon >> percentage [
	^ percentage
]

{ #category : #accessing }
ERTypeCoupon >> percentage: anObject [
	percentage := anObject
]

{ #category : #accessing }
ERTypeCoupon >> sponsor [
	^ sponsor
]

{ #category : #accessing }
ERTypeCoupon >> sponsor: anObject [
	sponsor := anObject
]
