"
User is a class for represent a TYPECOUPON table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERCoupon,
	#superclass : #SDActiveRecord,
	#instVars : [
		'sponsor',
		'typeCoupon',
		'amountPeople',
		'percentage'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #tests }
ERCoupon class >> couponGold [
	^(self new) typeCoupon: 'Gold'; amountPeople: 5; percentage: 10; yourself 
]

{ #category : #tests }
ERCoupon class >> couponPlatinum [
	^(self new) typeCoupon: 'Platinum'; amountPeople: 10; percentage: 20; yourself 
]

{ #category : #tests }
ERCoupon class >> testCouponGoldSponsor: aSponsor [
	^(self couponGold ) sponsor: aSponsor; yourself 
]

{ #category : #tests }
ERCoupon class >> testCouponPlatinumSponsor: aSponsor [
	^(self couponPlatinum ) sponsor: aSponsor; yourself 
]

{ #category : #accessing }
ERCoupon >> amountPeople [
	^ amountPeople
]

{ #category : #accessing }
ERCoupon >> amountPeople: anObject [
	amountPeople := anObject
]

{ #category : #initialization }
ERCoupon >> initialize [
	super initialize.
]

{ #category : #accessing }
ERCoupon >> percentage [
	^ percentage
]

{ #category : #accessing }
ERCoupon >> percentage: anObject [
	percentage := anObject
]

{ #category : #accessing }
ERCoupon >> sponsor [
	^ sponsor
]

{ #category : #accessing }
ERCoupon >> sponsor: anObject [
	sponsor := anObject
]

{ #category : #accessing }
ERCoupon >> typeCoupon [
	^ typeCoupon
]

{ #category : #accessing }
ERCoupon >> typeCoupon: anObject [
	typeCoupon := anObject
]
