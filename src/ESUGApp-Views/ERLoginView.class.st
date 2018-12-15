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
	pageController := ERLoginController new
]

{ #category : #rendering }
ERLoginView >> loginUser [
	| userValidate  |
	userValidate := self controller validateLogin.
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
	html
		render:
			(ERTextFieldLabel
				label: 'Email'
				callback: [ :value | self controller user email: value asString ]
				id: 'emailLogin').
	html
		render:
			(ERTextFieldLabel
				label: 'Password'
				callback: [ :value | 
					self controller user
						password: (ERUserAccount hashPassword: value) asString ]
				id: 'passwordLogin') forPassword
]

{ #category : #rendering }
ERLoginView >> renderLoginButton: html [
	html
		render:
			((ERButtonLabel
				label: 'Login'
				callback: [ self loginUser  ]
				id: 'login-button' type: 'submit') forLoginButton )
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
		render:((ERButtonLabel
				label: 'Group Manager'
				callback: [ self answer: #registerUserAsGroupManager ]
				id: 'register-button-as-group-manager' type: 'submit') forRegisterAsGroupManagerButton ).
	
			
]

{ #category : #rendering }
ERLoginView >> renderRegisterButton: html [
	 html
		render: ((ERButtonLabel
				label: 'Register'
				callback: [ self registerUser ]
				id: 'register-button' type: 'submit') forRegisterButton).
	
]
