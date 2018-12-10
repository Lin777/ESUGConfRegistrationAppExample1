Class {
	#name : #ERPaymentInformationTabForm,
	#superclass : #ERAttendeeRegistrationTabForm,
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERPaymentInformationTabForm >> formId [
	^ 'paymentInfoForm'
]

{ #category : #rendering }
ERPaymentInformationTabForm >> renderFormOn: html [
	html mdlTable
		shadow: 2;
		with: [ html
				tableBody: [ html 
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createSelectField: 'Payment Type: ' for: #paymentType: list: ERAttendee paymentTypes ) ])  ];
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createTextField: 'Reduction Ticket Code: ' for: #coupon:) ])  ];
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createSelectField: 'Payment Currency' for: #paymentCurrency: list: ERAttendee currencyTypes) ])  ] ] ]
]

{ #category : #accessing }
ERPaymentInformationTabForm >> tabName [
	^ 'Payment Information'
]
