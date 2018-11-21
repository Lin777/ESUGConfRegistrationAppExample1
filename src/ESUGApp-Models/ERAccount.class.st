"
User is a class for represent a ACCOUNT table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERAccount,
	#superclass : #SDActiveRecord,
	#instVars : [
		'firstName',
		'lastName',
		'address',
		'city',
		'country',
		'provinceState',
		'postalZipCode',
		'gender',
		'diet',
		'polosize',
		'user',
		'invoice',
		'daysAssist',
		'facebook',
		'twitter',
		'homePage',
		'afiliation',
		'keywords',
		'additionalText'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #accessing }
ERAccount >> additionalText [
	^ additionalText
]

{ #category : #accessing }
ERAccount >> additionalText: anObject [
	additionalText := anObject
]

{ #category : #accessing }
ERAccount >> address [
	^ address
]

{ #category : #accessing }
ERAccount >> address: anObject [
	address := anObject
]

{ #category : #accessing }
ERAccount >> afiliation [
	^ afiliation
]

{ #category : #accessing }
ERAccount >> afiliation: anObject [
	afiliation := anObject
]

{ #category : #accessing }
ERAccount >> city [
	^ city
]

{ #category : #accessing }
ERAccount >> city: anObject [
	city := anObject
]

{ #category : #accessing }
ERAccount >> country [
	^ country
]

{ #category : #accessing }
ERAccount >> country: anObject [
	country := anObject
]

{ #category : #accessing }
ERAccount >> daysAssist [
	^ daysAssist
]

{ #category : #accessing }
ERAccount >> daysAssist: anObject [
	daysAssist := anObject
]

{ #category : #accessing }
ERAccount >> diet [
	^ diet
]

{ #category : #accessing }
ERAccount >> diet: anObject [
	diet := anObject
]

{ #category : #accessing }
ERAccount >> facebook [
	^ facebook
]

{ #category : #accessing }
ERAccount >> facebook: anObject [
	facebook := anObject
]

{ #category : #accessing }
ERAccount >> firstName [
	^ firstName
]

{ #category : #accessing }
ERAccount >> firstName: anObject [
	firstName := anObject
]

{ #category : #accessing }
ERAccount >> gender [
	^ gender
]

{ #category : #accessing }
ERAccount >> gender: anObject [
	gender := anObject
]

{ #category : #accessing }
ERAccount >> homePage [
	^ homePage
]

{ #category : #accessing }
ERAccount >> homePage: anObject [
	homePage := anObject
]

{ #category : #initialization }
ERAccount >> initialize [
	super initialize
]

{ #category : #accessing }
ERAccount >> invoice [
	^ invoice
]

{ #category : #accessing }
ERAccount >> invoice: anObject [
	invoice := anObject
]

{ #category : #accessing }
ERAccount >> keywords [
	^ keywords
]

{ #category : #accessing }
ERAccount >> keywords: anObject [
	keywords := anObject
]

{ #category : #accessing }
ERAccount >> lastName [
	^ lastName
]

{ #category : #accessing }
ERAccount >> lastName: anObject [
	lastName := anObject
]

{ #category : #accessing }
ERAccount >> polosize [
	^ polosize
]

{ #category : #accessing }
ERAccount >> polosize: anObject [
	polosize := anObject
]

{ #category : #accessing }
ERAccount >> postalZipCode [
	^ postalZipCode
]

{ #category : #accessing }
ERAccount >> postalZipCode: anObject [
	postalZipCode := anObject
]

{ #category : #accessing }
ERAccount >> provinceState [
	^ provinceState
]

{ #category : #accessing }
ERAccount >> provinceState: anObject [
	provinceState := anObject
]

{ #category : #accessing }
ERAccount >> twitter [
	^ twitter
]

{ #category : #accessing }
ERAccount >> twitter: anObject [
	twitter := anObject
]

{ #category : #accessing }
ERAccount >> user [
	^ user
]

{ #category : #accessing }
ERAccount >> user: anObject [
	user := anObject
]
