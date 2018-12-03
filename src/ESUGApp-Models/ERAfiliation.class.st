Class {
	#name : #ERAfiliation,
	#superclass : #SDActiveRecord,
	#instVars : [
		'name',
		'address',
		'city',
		'country',
		'provinceState',
		'postalZipCode',
		'membershipType'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #tests }
ERAfiliation class >> testAffiliation: aString [
	^ self new
		name: aString;
		address: aString , ' address';
		city: aString , 'city';
		postalZipCode: aString , ' postal zip code';
		provinceState: aString , ' province';
		yourself
]

{ #category : #accessing }
ERAfiliation >> address [
	^ address
]

{ #category : #accessing }
ERAfiliation >> address: anObject [
	address := anObject
]

{ #category : #accessing }
ERAfiliation >> city [
	^ city
]

{ #category : #accessing }
ERAfiliation >> city: anObject [
	city := anObject
]

{ #category : #accessing }
ERAfiliation >> country [
	^ country
]

{ #category : #accessing }
ERAfiliation >> country: anObject [
	country := anObject
]

{ #category : #initialization }
ERAfiliation >> initialize [
	super initialize
]

{ #category : #accessing }
ERAfiliation >> membershipType [
	^ membershipType
]

{ #category : #accessing }
ERAfiliation >> membershipType: anObject [
	membershipType := anObject
]

{ #category : #accessing }
ERAfiliation >> name1 [
	^ name
]

{ #category : #accessing }
ERAfiliation >> name: anObject [
	name := anObject
]

{ #category : #accessing }
ERAfiliation >> postalZipCode [
	^ postalZipCode
]

{ #category : #accessing }
ERAfiliation >> postalZipCode: anObject [
	postalZipCode := anObject
]

{ #category : #accessing }
ERAfiliation >> provinceState [
	^ provinceState
]

{ #category : #accessing }
ERAfiliation >> provinceState: anObject [
	provinceState := anObject
]
