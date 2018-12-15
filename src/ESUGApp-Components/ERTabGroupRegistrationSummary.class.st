Class {
	#name : #ERTabGroupRegistrationSummary,
	#superclass : #ERTabContainerPage,
	#instVars : [
		'blockModify',
		'blockRegister',
		'blockPay',
		'blockInvoice',
		'content'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERTabGroupRegistrationSummary class >> modifyBlock: aModifyBlock registerAttendeeBlock: aRegisterBlock payBlock: aPayBlock invoiceBlock: anInvoiceBlock [
	 | instance |
	instance := self new.
	instance blockModify: aModifyBlock.
	instance blockRegister: aRegisterBlock .
	instance blockPay: aPayBlock .
	instance blockInvoice: anInvoiceBlock .
	^ instance
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> blockInvoice: anObject [
	blockInvoice := anObject
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> blockModify: anObject [
	blockModify := anObject
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> blockPay: anObject [
	blockPay := anObject
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> blockRegister: anObject [
	blockRegister := anObject
]

{ #category : #'as yet unclassified' }
ERTabGroupRegistrationSummary >> contentAsRegisterAttendee [
	|tabs|
	tabs := ERAttendeeRegistrationView new tabs.
	tabs do: [ :each | each attendee: attendee ].
	content := ERTabsView tabs: tabs
	
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> generateInvoice [
	Transcript show: 'invoice...'
]

{ #category : #initialization }
ERTabGroupRegistrationSummary >> initialize [
	super initialize.
	blockModify := [ self contentAsRegisterAttendee ].
	blockRegister := [ self contentAsRegisterAttendee ].
	blockPay := [ self contentAsRegisterAttendee ].
	blockInvoice := [ self contentAsRegisterAttendee]
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> initializeContent: html [
	content ifNotNil: [ 
		html render: content ]
	ifNil: [ 
	self renderOrganizationName: html.
	self renderPaymentStatus: html.
	self renderFormButtons: html. ]
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> modifyAffiliation [
	Transcript show: 'modify /......'
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> pay [
	Transcript show: 'pay.....'
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> registerAttendee [
	Transcript show: 'register attendee....'
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderButtons: html [
	html render: ( self createButtonField: 'Modify Affiliation' with: blockModify id: 'modifyAffiliation') forContentButton.
	html render: (self createButtonField: 'Register Attendee' with: blockRegister id: 'registerAttendee') forContentButton.
	html render: (self createButtonField: 'Pay' with: blockPay id: 'pay') forContentButton.
	html render: (self createButtonField:'GENERATE INVOICE'  with: blockInvoice  id: 'generateInvoice') forContentButtonColored
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderContainer: html [
	html horizontalRule.
	self renderContent: html.
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderContent: html [
	content ifNotNil: [ 
		html render: content ]
	ifNil: [ 
	self renderOrganizationName: html.
	self renderPaymentStatus: html.
	self renderFormButtons: html. ]
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderFormButtons: html [
html form
		method: 'post';
		id: 'groupManagerFunctions';
		with: [ self renderButtons: html]
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderOrganizationName: html [
	html render: (self createTextStrong: 'Organization Name: ' text: attendee orgName)
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderPaymentStatus: html [
	html render: (self createTextStrong: 'Payment Status: ' text: 'No status avaliable. The group has no mmebers ').
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> tabId [
	^ 'summary'
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> tabName [
	^ 'Summary'
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> title [
	^ 'Group Manager Short Description'
]
