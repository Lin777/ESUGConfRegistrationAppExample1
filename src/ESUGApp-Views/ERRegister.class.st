Class {
	#name : #ERRegister,
	#superclass : #ERPageView,
	#instVars : [
		'tabs',
		'messageComponent'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #adding }
ERRegister >> addTab: aAttendeeTabForm [
	self tabs
		ifNotEmpty: [ aAttendeeTabForm previousTabFrom: self tabs last.
			self tabs last nextTabFrom: aAttendeeTabForm ].
	self tabs add: aAttendeeTabForm
]

{ #category : #initialization }
ERRegister >> initialize [
	super initialize .
	icon := 'assignment'.
	messageComponent := (ERComponentAlert warningAlert id: 'registerAlert').
	pageController := ERAttendeeRegistrationController new.
	id := 'register'.
	self initializeTabForms.
]

{ #category : #initialization }
ERRegister >> initializeTabForms [
	self subclassResponsibility 
]

{ #category : #'tools registry' }
ERRegister >> register [
	|user|
	user := pageController save.
	user notNil
		ifTrue: [ self answer: user ]
		ifFalse:
			[ messageComponent errorMessage: 'This email is aleready registered' ]
]

{ #category : #rendering }
ERRegister >> renderPageOn: html [
	html
		html:
			'<div class=''mdl-tabs mdl-js-tabs mdl-js-ripple-effect''>
                      <div class=''mdl-grid mdl-grid--no-spacing''>'.
	html form
		method: 'post';
		id: 'formRegister';
		with: [
			html render: messageComponent.
			self renderTabNames: html.
			self renderTabs: html ].
	html html: '</div> </div>'
]

{ #category : #rendering }
ERRegister >> renderTabNames: html [
	html div
		class: 'mdl-tabs__tab-bar';
		with: [ self tabs
				do: [ :tab | 
					|activeClass|
					activeClass := ''.
					tab isActive ifTrue: [ activeClass := ' is-active' ].
					html anchor
						url: ('#' , 'tab-',tab formId);
						class: 'mdl-tabs__tab', activeClass ;
						with: [html paragraph: (tab tabName) ]] ].
]

{ #category : #rendering }
ERRegister >> renderTabs: html [
	self tabs
		do: [ :tab | 
			|activeClass |		
			activeClass := ''.
			tab isActive ifTrue: [ activeClass := ' is-active' ].
			
			html div
				class: 'mdl-tabs__panel', activeClass ;
				id: 'tab-',tab formId;
				with: [ html render: tab ] ].
]

{ #category : #accessing }
ERRegister >> tabs [
	tabs ifNil: [ tabs:= OrderedCollection new].
	^ tabs.
]
