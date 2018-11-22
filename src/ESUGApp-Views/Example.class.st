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
	html div
				class: 'form-group';
				with: [ html label
						attributeAt: 'for' put: 'sel3';
						with: 'Payment Type:'.
					html select
						class: 'form-control';
						id: 'sel3';
						with: [ html option value: 'Dollar'; label: 'Dollar'; callback: [:value | Transcript show: value asString ]; selected: true.
							html option value: 'Euro'; label:'Euro'; callback: [:value | Transcript show: value asString]; selected: false ].]
]
