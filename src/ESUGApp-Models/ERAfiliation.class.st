Class {
	#name : #ERAfiliation,
	#superclass : #SDActiveRecord,
	#instVars : [
		'name',
		'address',
		'city',
		'provinceState',
		'postalZipCode'
	],
	#category : #'ESUGApp-Models'
}

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
