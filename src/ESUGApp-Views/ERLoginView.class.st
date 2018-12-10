Class {
	#name : #ERLoginView,
	#superclass : #ERPageView,
	#instVars : [
		'tabs',
		'messageComponent'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #testing }
ERLoginView class >> canBeRoot [ 
    ^ true
]

{ #category : #initialization }
ERLoginView class >> initialize [
	"self initialize"

	(WAAdmin register: self asApplicationAt: 'Login')
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: CssForLoginMDL;
		addLibrary: CssForRegisterFormsMDL;
		preferenceAt: #sessionClass put: ERSession
]

{ #category : #rendering }
ERLoginView >> initialize [
	super initialize .
	title := 'User Login'.
	icon := 'person'.
	messageComponent := (ERComponentAlert warningAlert id: 'loginAlert').
	id := 'login'.
	pageController := ERERLoginController new
]

{ #category : #rendering }
ERLoginView >> loginUser [
	| userValidate  |
	userValidate := pageController validateLogin.
	userValidate notNil
		ifTrue: [ self answer: userValidate ]
		ifFalse:
			[ messageComponent errorMessage: 'Login failed.' ]
]

{ #category : #rendering }
ERLoginView >> registerUser [
	Transcript show: 'Pass' .
	self answer: #registerUser
]

{ #category : #rendering }
ERLoginView >> renderFieldsLogin: html [
	html render: (ERTextFieldLabel label: 'Email' callback: [ :value | self controller user email: value asString ]).
	html render: ((ERTextFieldLabel label: 'Password' callback: [ :value | self controller user email: value asString ] )textType: 'password').
]

{ #category : #rendering }
ERLoginView >> renderLoginButton: html [
	html
		render:
			((ERButtonLabel
				label: 'Login'
				callback: [ self controller validateLogin ]
				id: 'login-button' type: 'submit') class: ' mdl-color-text--white')
]

{ #category : #rendering }
ERLoginView >> renderMessageComponent: html [
	html render: messageComponent 
]

{ #category : #rendering }
ERLoginView >> renderPageOn: html [
	html form
		id: 'loginForm';
		with: [ 
			self renderMessageComponent: html.
			self renderFieldsLogin:html.
			self renderLoginButton: html.
			self renderRegisterButton: html.
			self renderRegisterAsGroupManagerButton: html.
	html html: '<button class="mdl-button mdl-js-button mdl-button--primary">Forgot Password</button> </div>']
]

{ #category : #rendering }
ERLoginView >> renderRegisterAsGroupManagerButton: html [
   html
		render:(ERButtonLabel
				label: 'Group Manager'
				callback: [ self answer: #registerUserAsGroupManager ]
				id: 'register-button' type: 'submit').
	
			
]

{ #category : #rendering }
ERLoginView >> renderRegisterButton: html [
	|registerButton|
	registerButton := (ERButtonLabel
				label: 'Register'
				callback: [ self registerUser ]
				id: 'register-button' type: 'submit').
	html
		render: registerButton 
			
]
