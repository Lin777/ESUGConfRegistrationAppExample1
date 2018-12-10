Class {
	#name : #ERGroupManagerRegistrationView,
	#superclass : #ERRegister,
	#category : #'ESUGApp-Views'
}

{ #category : #initialization }
ERGroupManagerRegistrationView >> convertToGroupManager [
	self controller attendee userAccount role: 'groupManager'
]

{ #category : #initialization }
ERGroupManagerRegistrationView >> initialize [
	super initialize.
	title := 'Group Manager'.
]

{ #category : #initialization }
ERGroupManagerRegistrationView >> initializeTabForms [
	self
		addTab: (ERBasicInformationTabForm on: self controller attendee).
	self
		addTab: (ERAffiliationInformationTabForm on: self controller attendee).
	self
		addTab:
			(ERDoneTabForm
				on: self controller attendee
				callback: [ self registerAsGroupManager ]).
	(self tabs at: 1) activate
]

{ #category : #initialization }
ERGroupManagerRegistrationView >> registerAsGroupManager [
	self convertToGroupManager.
	self register
]
