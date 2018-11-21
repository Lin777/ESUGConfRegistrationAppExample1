Class {
	#name : #ERRoot,
	#superclass : #WATask,
	#category : #'ESUGApp-Views'
}

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

	Transcript show: 'Redireccionamiento'.
 user := self call: ERAdministrationPageContentView new.
 user ifNotNil: [
	Transcript show: 'Redireccionamiento'.
  self session login: user.
  self call: ERAdministrationLoggedInView new].
user ifNil: [ Transcript show: 'User nil' ].
]
