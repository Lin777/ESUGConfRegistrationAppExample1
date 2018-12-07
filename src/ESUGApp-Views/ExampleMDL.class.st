Class {
	#name : #ExampleMDL,
	#superclass : #WATask,
	#category : #'ESUGApp-Views'
}

{ #category : #testing }
ExampleMDL class >> canBeRoot [ 
	^ true
]

{ #category : #testing }
ExampleMDL class >> initialize [
	"self initialize"

	(WAAdmin register: self asApplicationAt: 'Example')
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: ERLibraryForMDL;
		preferenceAt: #sessionClass put: ERSession
]

{ #category : #running }
ExampleMDL >> go [
	| loginAnswer user |
	loginAnswer := self call: ERLoginView  new.
	loginAnswer = #registerUser
		ifTrue: [ user := self call: ERAttendeeRegistrationView new ]
		"ifFalse: [ loginAnswer = #registerUserAsGroupManager
				ifTrue: [ user := self call: ERView new ]
				ifFalse: [ user := loginAnswer ].
			user
				ifNotNil: [ self session login: user.
					self call: ERView new ] ]"
]
