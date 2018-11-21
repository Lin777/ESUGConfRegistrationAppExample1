Class {
	#name : #Example,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Views'
}

{ #category : #testing }
Example class >> canBeRoot [ 
	^ true
]

{ #category : #testing }
Example class >> initialize [
 "self initialize"
 (WAAdmin
  register: self
  asApplicationAt: 'Example')
	addLibrary: CssBootstrapLibrary337 ;
	addLibrary: CssGoogleMonserratLibrary  ;
	addLibrary: CssGoogleLatoLibrary  ;
	addLibrary: JQGoogleLibrary331 ;
	addLibrary: JQBootstrapLibrary337 ;
   addLibrary: ERLibrary;
	addLibrary: JQValidateForm ;
  preferenceAt: #sessionClass put: ERSession.
]

{ #category : #rendering }
Example >> renderContentOn: html [
	html render: (ERTextInputComponent new id: 'addInfoKeywords'; name: 'addInfoKeywords'; type: 'text'; callback: [  ];label:'Keywords')
]
