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
ERPaymentInformationTabForm >> registerAttendee [
	attendee save.
	self call: ERLoginView .
]

{ #category : #rendering }
ERPaymentInformationTabForm >> renderFormOn: html [
	html mdlTable
		style: 'border: inset 0pt';
		shadow: 2;
		with: [ html
				tableBody: [ html 
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createSelectField: 'Payment Type: ' for: #paymentType: list: ERAttendee paymentTypes ) ])  ];
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createTextField: 'Reduction Ticket Code: ' for: #coupon:) ])  ];
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createSelectField: 'Payment Currency' for: #paymentCurrency: list: ERAttendee currencyTypes) ])  ] ];
							
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createButtonField: 'Save Information' with: [ self registerAttendee ] ) ])  ] ] 
]

{ #category : #accessing }
ERPaymentInformationTabForm >> tabName [
	^ 'Payment Information'
]
