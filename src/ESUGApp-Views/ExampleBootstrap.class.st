Class {
	#name : #ExampleBootstrap,
	#superclass : #WATask,
	#category : #'ESUGApp-Views'
}

{ #category : #testing }
ExampleBootstrap class >> canBeRoot [
	^ true
]

{ #category : #testing }
ExampleBootstrap class >> initialize [
	"self initialize"

	(WAAdmin register: self asApplicationAt: 'esugb')
		addLibrary: CssBootstrapLibrary337;
		addLibrary: CssGoogleMonserratLibrary;
		addLibrary: CssGoogleLatoLibrary;
		addLibrary: JQGoogleLibrary331;
		addLibrary: JQBootstrapLibrary337;
		addLibrary: ERLibrary;
		addLibrary: JQValidateForm;
		preferenceAt: #sessionClass put: ERSession
]

{ #category : #running }
ExampleBootstrap >> go [
	| loginAnswer user |
	loginAnswer := self call: ERLoginWithBootstrap new.
	loginAnswer = #registerUser
		ifTrue: [ user := self call: ERRegisterUser new ]
		ifFalse: [ loginAnswer = #registerUserAsGroupManager
				ifTrue: [ user := self call: ERRegisterUser new ]
				ifFalse: [ user := loginAnswer ].
			user
				ifNotNil: [ self session login: user.
					self call: ERHome new ] ]
]
