Class {
	#name : #ERAdministrationPaymentInformationRegister,
	#superclass : #WAComponent,
	#instVars : [
		'paymentType',
		'reductionTicket',
		'paymentCurrency'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationPaymentInformationRegister >> paymentCurrency [
	^ paymentCurrency
]

{ #category : #accessing }
ERAdministrationPaymentInformationRegister >> paymentCurrency: anObject [
	paymentCurrency := anObject
]

{ #category : #accessing }
ERAdministrationPaymentInformationRegister >> paymentType [
	^ paymentType
]

{ #category : #accessing }
ERAdministrationPaymentInformationRegister >> paymentType: anObject [
	paymentType := anObject
]

{ #category : #accessing }
ERAdministrationPaymentInformationRegister >> reductionTicket [
	^ reductionTicket
]

{ #category : #accessing }
ERAdministrationPaymentInformationRegister >> reductionTicket: anObject [
	reductionTicket := anObject
]
