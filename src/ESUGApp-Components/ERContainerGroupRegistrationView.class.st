Class {
	#name : #ERContainerGroupRegistrationView,
	#superclass : #ERContainerView,
	#instVars : [
		'tabs'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERContainerGroupRegistrationView >> addTab: aAttendeeTabForm [
	self tabs add: aAttendeeTabForm
]

{ #category : #rendering }
ERContainerGroupRegistrationView >> initialize [
	super initialize .
	self initializeTabForms.
]

{ #category : #rendering }
ERContainerGroupRegistrationView >> initializeTabForms [
	|anAttendee|
	anAttendee := ERAttendee find: [ :each | each userAccount email = 'carlos@gmail.com' ].
	self
		addTab: (ERTabGroupRegistrationSummary on: anAttendee).
	self
		addTab: (ERTabGroupRegistrationMembers on: anAttendee).
	(self tabs at: 1) activate
]

{ #category : #rendering }
ERContainerGroupRegistrationView >> renderContentPage: html [ 
	html div class: 'mdl-tabs mdl-js-tabs mdl-js-ripple-effect'; with: [ 
		html render: (ERTabs new tabs: self tabs ) ]
	  
]

{ #category : #rendering }
ERContainerGroupRegistrationView >> tabs [
	tabs ifNil: [ tabs:= OrderedCollection new].
	^ tabs.
]
