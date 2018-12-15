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
ERRegister >> convertToGroupManager [
	self attendee userAccount role: 'groupManager'
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
	self validateRegister: user
]

{ #category : #initialization }
ERRegister >> registerAsGroupManager [
	|user|
	user := pageController saveAsGroupManager.
	self validateRegister: user
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
			html render: (ERTabsView new tabs: self tabs)
			 ].
	html html: '</div> </div>'
]

{ #category : #accessing }
ERRegister >> tabs [
	tabs ifNil: [ tabs:= OrderedCollection new].
	^ tabs.
]

{ #category : #'as yet unclassified' }
ERRegister >> validateRegister: user [

	user notNil
		ifTrue: [ self answer: user ]
		ifFalse:
			[ messageComponent errorMessage: 'This email is aleready registered' ]
]
