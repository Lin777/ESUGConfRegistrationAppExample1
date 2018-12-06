Class {
	#name : #ERLogin,
	#superclass : #WAComponent,
	#instVars : [
		'email',
		'password',
		'loginButton',
		'registerButton',
		'registerAsGroupManager',
		'forgotPasswordButton',
		'user',
		'messageComponent'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #hooks }
ERLogin >> children [
	^ Array
		with: self email;
		with: self password;
		with: self loginButton	";
		with: forgotPasswordButton;
		with: registerAsGroupManager;
		with: registerButton"
]

{ #category : #accessing }
ERLogin >> email [
	^ email
]

{ #category : #accessing }
ERLogin >> email: anObject [
	email := anObject
]

{ #category : #initialization }
ERLogin >> forgotPassword [
	
]

{ #category : #accessing }
ERLogin >> forgotPasswordButton [
	^ forgotPasswordButton
]

{ #category : #accessing }
ERLogin >> forgotPasswordButton: anObject [
	forgotPasswordButton := anObject
]

{ #category : #initialization }
ERLogin >> getEmailLogin [
	^ (ERTemplateInput new
				id: 'email';
				name: 'email';
				type: 'text';
				label: 'Email address';
				callback: [ :value | self user email: value asString. Transcript show: 'Este es el email ',value ])
]

{ #category : #initialization }
ERLogin >> getForgotPasswordButton [
	^ ERTemplateButton new
		id: 'forgotPasswordButton';
		label: 'Forgot Password';
		type: 'button';
		callback: [ self forgotPassword ]
]

{ #category : #initialization }
ERLogin >> getLoginButton [
	^ ERTemplateButton new
		id: 'loginbutton';
		label: 'Login';
		type: 'submit';
		callback: [ self loginUser ]
]

{ #category : #initialization }
ERLogin >> getLoginController [
	
		Transcript show: 'Get controller'.
	^ ERLoginController new
		email: self user email;
		password: self user password;
		yourself.
]

{ #category : #initialization }
ERLogin >> getMessageLogin [
	^ ERComponentAlert warningAlert id: 'loginAlert'
]

{ #category : #initialization }
ERLogin >> getPasswordLogin [
	^ (ERTemplateInput new
				id: 'password';
				name: 'password';
				type: 'password';
				label: 'Password';
				callback: [ :value | self user password: (ERUser hashPassword: value) asString ])
]

{ #category : #initialization }
ERLogin >> getRegisterAsGroupManagerButton [
	^ ERTemplateButton new
		id: 'registerAsGroupManagerButton';
		label: 'Group Manager';
		type: 'button';
		callback: [ self registerAsGroupManagerUser  ]
]

{ #category : #initialization }
ERLogin >> getRegisterButton [
	^ ERTemplateButton new
		id: 'registerButton';
		label: 'Register';
		type: 'button';
		callback: [ self registerUser ]
]

{ #category : #initialization }
ERLogin >> initialize [
	super initialize.
	
	user := ERUser new.
	self initializeLoginComponent .
]

{ #category : #initialization }
ERLogin >> initializeLoginComponent [
		self messageComponent: (self getMessageLogin).
		self email: (self getEmailLogin).
		self password: (self getPasswordLogin).
		self loginButton: (self getLoginButton).
		self registerButton: (self getRegisterButton).
		self registerAsGroupManager: self getRegisterAsGroupManagerButton.
		self forgotPasswordButton: self getForgotPasswordButton.
		
]

{ #category : #accessing }
ERLogin >> loginButton [
	^ loginButton
]

{ #category : #accessing }
ERLogin >> loginButton: anObject [
	loginButton := anObject
]

{ #category : #initialization }
ERLogin >> loginUser [
	| userValidate controller |
	controller := self getLoginController.
	userValidate := controller validateLogin.
	userValidate notNil
		ifTrue: [
	Transcript show: userValidate email. self answer: userValidate ]
		ifFalse:
			[  
		Transcript show: 'Login failed'.
		messageComponent errorMessage: 'Login failed.' ]
]

{ #category : #accessing }
ERLogin >> messageComponent [
	^ messageComponent
]

{ #category : #accessing }
ERLogin >> messageComponent: anObject [
	messageComponent := anObject
]

{ #category : #accessing }
ERLogin >> password [
	^ password
]

{ #category : #accessing }
ERLogin >> password: anObject [
	password := anObject
]

{ #category : #initialization }
ERLogin >> registerAsGroupManager [
 ^ registerAsGroupManager
]

{ #category : #accessing }
ERLogin >> registerAsGroupManager: anObject [
	registerAsGroupManager := anObject
]

{ #category : #initialization }
ERLogin >> registerAsGroupManagerUser [
 
 self answer: #registerUserAsGroupManager.
]

{ #category : #accessing }
ERLogin >> registerButton [
	^ registerButton
]

{ #category : #accessing }
ERLogin >> registerButton: anObject [
	registerButton := anObject
]

{ #category : #initialization }
ERLogin >> registerUser [
 
 self answer: #registerUser.
]

{ #category : #rendering }
ERLogin >> renderContentOn: html [ 
	self subclassResponsibility 
]

{ #category : #accessing }
ERLogin >> user [
	^ user
]

{ #category : #accessing }
ERLogin >> user: anObject [
	user := anObject
]
