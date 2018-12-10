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
		addLibrary: CssForRegisterFormsMDL;
		addLibrary: CssForLoginMDL;
		addLibrary: ERJQValidateForm ;
		addLibrary: ERLibrary ;
		preferenceAt: #sessionClass put: ERSession
]

{ #category : #building }
ERAttendeeRegistrationView >> addTab: aAttendeeTabForm [
	self tabs
		ifNotEmpty: [ aAttendeeTabForm previousTabFrom: self tabs last.
			self tabs last nextTabFrom: aAttendeeTabForm ].
	self tabs add: aAttendeeTabForm
]

{ #category : #initialization }
ERAttendeeRegistrationView >> initialize [
	super initialize .
	title := 'Registration'.
	icon := 'assignment'.
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
	(self tabs at: 1) activate
]

{ #category : #rendering }
ERAttendeeRegistrationView >> recoverAssistant [
	"Do something to recover attendee"
	self attendee: nil
]

{ #category : #rendering }
ERAttendeeRegistrationView >> renderPageOn: html [
	html form
		method: 'post';
		id: 'formRegister';
		with: [ html
				html:
					'<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                      <div class="mdl-grid mdl-grid--no-spacing">'.
			self renderTabNames: html.
			self renderTabs: html.
			html html: '</div> </div>' ]
]

{ #category : #rendering }
ERAttendeeRegistrationView >> renderTabNames: html [
	html div
		class: 'mdl-tabs__tab-bar';
		with: [ self tabs
				do: [ :tab | 
					|activeClass|
					activeClass := ''.
					tab isActive ifTrue: [ activeClass := ' is-active' ].
					html anchor
						url: ('#' , tab formId);
						class: 'mdl-tabs__tab', activeClass ;
						with: [html paragraph: (tab tabName) ]] ].
]

{ #category : #rendering }
ERAttendeeRegistrationView >> renderTabs: html [
	self tabs
		do: [ :tab | 
			|activeClass |		
			activeClass := ''.
			tab isActive ifTrue: [ activeClass := ' is-active' ].
			
			html div
				class: 'mdl-tabs__panel', activeClass ;
				id: tab formId;
				with: [ html render: tab ] ].
]

{ #category : #accessing }
ERAttendeeRegistrationView >> tabs [
	tabs ifNil: [ tabs:= OrderedCollection new].
	^ tabs.
]
