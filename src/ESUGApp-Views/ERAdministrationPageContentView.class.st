Class {
	#name : #ERAdministrationPageContentView,
	#superclass : #WAComponent,
	#instVars : [
		'email',
		'password',
		'messageComponent'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #initialization }
ERAdministrationPageContentView class >> canBeRoot [

 ^true
]

{ #category : #initialization }
ERAdministrationPageContentView class >> initialize [
 "self initialize"
 (WAAdmin
  register: self
  asApplicationAt: 'ESUG')
	addLibrary: CssBootstrapLibrary337 ;
	addLibrary: CssGoogleMonserratLibrary  ;
	addLibrary: CssGoogleLatoLibrary  ;
	addLibrary: JQGoogleLibrary331 ;
	addLibrary: JQBootstrapLibrary337 ;
   addLibrary: ERLibrary;
  preferenceAt: #sessionClass put: ERSession.
]

{ #category : #accessing }
ERAdministrationPageContentView >> email [
	^ email
]

{ #category : #accessing }
ERAdministrationPageContentView >> email: anObject [
	email := anObject
]

{ #category : #accessing }
ERAdministrationPageContentView >> messageComponent [
	^ messageComponent
]

{ #category : #accessing }
ERAdministrationPageContentView >> messageComponent: anObject [
	messageComponent := anObject
]

{ #category : #accessing }
ERAdministrationPageContentView >> password [
	^ password
]

{ #category : #accessing }
ERAdministrationPageContentView >> password: anObject [
	password := anObject
]

{ #category : #rendering }
ERAdministrationPageContentView >> renderContentOn: html [
	html render: (ERAdministrationNavView new).
	html render: (ERAdministrationLoginView new).
	html render: (ERAdministrationRegisterView new).
	html render: (ERAdministrationRegisterAsGroupManagerView new).
	html render: (ERAdministrationForgotPassView new).
	html render: (ERAdministrationFooterView  new).
]
