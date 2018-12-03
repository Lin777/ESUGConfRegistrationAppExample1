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

	addLibrary: CssGoogleAPIMaterialIcons ;
	addLibrary: CssBootstrapcdn ;
	addLibrary: CssMaterialKit ;
	addLibrary: CssFooter ;
	addLibrary: JsJqueryMin ;
	addLibrary: JsPopperMin ;
	addLibrary: JsBootstrapMaterialDesignMin ;
	addLibrary: JsBMomentMin ;
	addLibrary: JsBotstrapDatePicker ;
	addLibrary: JsNouislider ;
	addLibrary: JsMaterialKit ;

  preferenceAt: #sessionClass put: ERSession.
]

{ #category : #rendering }
Example >> renderContentOn: html [
	html render: ERNavBarComponent new.
	html render: ERComponentContent contentHome.
	html render: ERComponentFooter new.
]
