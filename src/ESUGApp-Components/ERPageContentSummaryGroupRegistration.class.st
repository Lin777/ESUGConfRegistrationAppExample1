Class {
	#name : #ERPageContentSummaryGroupRegistration,
	#superclass : #WAComponent,
	#instVars : [
		'modifyAffiliationButton',
		'registerAttendeeButton',
		'payButton',
		'generateInvoiceButton'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #hooks }
ERPageContentSummaryGroupRegistration >> children [
	^ Array
		with: modifyAffiliationButton;
		with: registerAttendeeButton;
		with: payButton;
		with: generateInvoiceButton
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> generateInvoiceButton [
	^ generateInvoiceButton
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> generateInvoiceButton: anObject [
	generateInvoiceButton := anObject
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> initialize [
	super initialize .
	generateInvoiceButton := ERComponentButton new id: 'generateInvoice';
	name: 'generateInvoice'; type: 'button'; class: ''; callback: [  ]; label: 'Generate Invoice'.
	modifyAffiliationButton := ERComponentButton new id: 'modifyAffiliation';
	name: 'modifyAffiliation'; type: 'button'; class: ''; callback: [  ]; label: 'Modify Affiliation'.  
	payButton := ERComponentButton new id: 'pay';
	name: 'pay'; type: 'button'; class: ''; callback: [  ]; label: 'Pay'. 
	registerAttendeeButton :=  ERComponentButton new id: 'registerAtterndee';
	name: 'registerAtterndee'; type: 'button'; class: ''; callback: [  ]; label: 'Register Attendee'. 
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> modifyAffiliationButton [
	^ modifyAffiliationButton
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> modifyAffiliationButton: anObject [
	modifyAffiliationButton := anObject
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> payButton [
	^ payButton
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> payButton: anObject [
	payButton := anObject
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> registerAttendeeButton [
	^ registerAttendeeButton
]

{ #category : #accessing }
ERPageContentSummaryGroupRegistration >> registerAttendeeButton: anObject [
	registerAttendeeButton := anObject
]

{ #category : #rendering }
ERPageContentSummaryGroupRegistration >> renderContentOn: html [
	html div class: 'container'; with: [ 
		html break . 
		html heading level2; with: 'Group Manager Short Description'.
		html heading level5; with: [ html paragraph with: 'Organization name: ', self session account afiliation name1.
			html paragraph with: 'Payment status: No available. The group has no members' ].
		html render: self modifyAffiliationButton .
		html render: self registerAttendeeButton .
		html render: self payButton .
		html render: self generateInvoiceButton . ].
]
