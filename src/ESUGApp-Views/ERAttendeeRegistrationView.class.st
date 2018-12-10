Class {
	#name : #ERAttendeeRegistrationView,
	#superclass : #ERPageView,
	#instVars : [
		'tabs'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #'options-generated' }
ERAttendeeRegistrationView class >> canBeRoot [ 
    ^ true
]

{ #category : #'options-generated' }
ERAttendeeRegistrationView class >> initialize [
	"self initialize"

	(WAAdmin register: self asApplicationAt: 'Reg')
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: ERLibraryForMDL;
		preferenceAt: #sessionClass put: ERSession
]

{ #category : #building }
ERAttendeeRegistrationView >> addTab: aAttendeeTabForm [
	self tabs
		ifNotEmpty: [ aAttendeeTabForm previousTabFrom: self tabs last.
			self tabs last nextTabFrom: aAttendeeTabForm ].
	self tabs add: aAttendeeTabForm
]

{ #category : #initialize }
ERAttendeeRegistrationView >> initialize [
	super initialize.
	pageController := ERAttendeeRegistrationController new.
	self initializeTabForms.
]

{ #category : #initialize }
ERAttendeeRegistrationView >> initializeTabForms [
	self addTab: (ERBasicInformationTabForm on: self controller attendee).
	self addTab: (ERContactInformationTabForm on: self controller attendee).
	self addTab: (ERConferenceOptionsTabForm  on: self controller attendee).
	self addTab: (ERAffiliationInformationTabForm on: self controller attendee).
	self addTab: (ERAdditionalInformationTabForm on: self controller attendee).
	self addTab: (ERPaymentInformationTabForm on: self controller attendee).
	(self tabs at: 6) activate
]

{ #category : #rendering }
ERAttendeeRegistrationView >> renderPageOn: html [
	html mdlLayout
		fixedHeader;
		with: [ html
				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: self title ].
					html mdlLayoutTabBar
						rippleEffect;
						with: [ tabs
								do: [ :tab | 
									html mdlLayoutTab
										isActiveIf: tab isActive;
										url: tab id;
										with: tab tabName ] ] ].
			html mdlLayoutDrawer: [ html mdlLayoutTitle: self title ].
			html
				mdlLayoutContent: [ tabs
						do: [ :tab | 
							html mdlLayoutTabPanel
								isActiveIf: tab isActive;
								id: tab id;
								with: [ html render: tab ] ] ] ]
]

{ #category : #accessing }
ERAttendeeRegistrationView >> tabs [
	tabs ifNil: [ tabs:= OrderedCollection new].
	^ tabs.
]
