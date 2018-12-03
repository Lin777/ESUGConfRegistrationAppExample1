Class {
	#name : #ERAdministrationAffiliationInformationRegister,
	#superclass : #WAComponent,
	#instVars : [
		'organizationName',
		'organizationAddress',
		'organizationCity',
		'organizationCountry',
		'organizationProvince',
		'organizationPostal',
		'membershipType'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> membershipType [
	^ membershipType
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> membershipType: anObject [
	membershipType := anObject
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationAddress [
	^ organizationAddress
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationAddress: anObject [
	organizationAddress := anObject
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationCity [
	^ organizationCity
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationCity: anObject [
	organizationCity := anObject
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationCountry [
	^ organizationCountry
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationCountry: anObject [
	organizationCountry := anObject
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationName [
	^ organizationName
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationName: anObject [
	organizationName := anObject
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationPostal [
	^ organizationPostal
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationPostal: anObject [
	organizationPostal := anObject
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationProvince [
	^ organizationProvince
]

{ #category : #accessing }
ERAdministrationAffiliationInformationRegister >> organizationProvince: anObject [
	organizationProvince := anObject
]
