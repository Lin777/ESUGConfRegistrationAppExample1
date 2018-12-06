Class {
	#name : #ERRoot,
	#superclass : #WATask,
	#category : #'ESUGApp-Views'
}

{ #category : #testing }
ERRoot class >> canBeRoot [
	^ true
]

{ #category : #testing }
ERRoot class >> initialize [
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
	addLibrary: JQValidateForm;
  preferenceAt: #sessionClass put: ERSession.
]

{ #category : #running }
ERRoot >> go [
 | user |

 user := self call: ERAdministrationPageContentView new.
 user ifNotNil: [
  self session login: user.
  self call: ERAdministrationLoggedInView new].

"
 | loginAnswer user |
 loginAnswer := self call: ERLogin new.
 loginAnswer = #registerUser
  ifTrue: [user := self call: ERRegisterUser new]
  ifFalse: [user := loginAnswer].
 loginAnswer = #registerUserAsGroupManager
ifTrue: [ user := self call: ERRegisterAsGroupManagerComponent new ]
ifFalse: [ user := loginAnswer ].
 user ifNotNil: [
  self session login: user.
  self call: ERHome new]."
]

{ #category : #running }
ERRoot >> initialize [
	super initialize
]
