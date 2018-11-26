Class {
	#name : #ERAdministrationPageContentView,
	#superclass : #WAComponent,
	#instVars : [
		'loginComponent',
		'registerComponent',
		'user',
		'account',
		'daysAssist',
		'afiliationInfo',
		'invoice',
		'diet'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationPageContentView >> account [
	^ account
]

{ #category : #accessing }
ERAdministrationPageContentView >> account: anObject [
	account := anObject
]

{ #category : #accessing }
ERAdministrationPageContentView >> afiliationInfo [
	^ afiliationInfo
]

{ #category : #accessing }
ERAdministrationPageContentView >> afiliationInfo: anObject [
	afiliationInfo := anObject
]

{ #category : #accessing }
ERAdministrationPageContentView >> daysAssist [
	^ daysAssist
]

{ #category : #accessing }
ERAdministrationPageContentView >> daysAssist: anObject [
	daysAssist := anObject
]

{ #category : #initialization }
ERAdministrationPageContentView >> getButtonLogin [
	^ ERComponentButton loginButton
		id: 'loginbutton';
		callback: [ self loginUser ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactAdditionalText [
	^ ERTextAreaComponent new
		label: 'Additional text';
		id: 'addInfoAddText';
		name: 'addInfoAddText';
		callback: [ :value | self account additionalText: (value asString) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactAddress [
	^ ERTextInputComponent
		id: 'contactAddress'
		name: 'contactAddress'
		type: 'text'
		label: 'Address'
		callback: [ :value | self account address: (value asString) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactCity [
	^ ERTextInputComponent
		id: 'contactCity'
		name: 'contactCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self account city: (value asString)]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactFacebook [
	^ ERTextInputComponent
		id: 'contactFacebook'
		name: 'contactFacebook'
		type: 'text'
		label: 'Facebook (URL)'
		callback: [ :value | self account facebook: (value asString) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactHomePage [
	^ ERTextInputComponent
		id: 'contactHomePage'
		name: 'contactHomePage'
		type: 'text'
		label: 'Home Page (URL)'
		callback: [ :value | self account homePage: (value asString) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactKeywords [
	^ ERTextInputComponent new
		id: 'addInfoKeywords';
		name: 'addInfoKeywords';
		type: 'text';
		callback: [ :value | self account keywords: value asString ];
		label: 'Keywords'
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactPostal [
	^ ERTextInputComponent
		id: 'contactPostal'
		name: 'contactPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self account postalZipCode: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactProvince [
	^ ERTextInputComponent
		id: 'contactProvince'
		name: 'contactProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self account provinceState: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactTwitter [
	^ ERTextInputComponent
		id: 'contactTwitter'
		name: 'contactTwitter'
		type: 'text'
		label: 'Twitter (URL)'
		callback: [ :value | self account twitter: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getEmailLogin [
	^ (ERTextInputComponent
				id: 'email'
				name: 'email'
				type: 'text'
				label: 'Email address'
				callback: [ :value | self user email: value asString ])
]

{ #category : #initialization }
ERAdministrationPageContentView >> getFirstName [
	^ ERTextInputComponent
		id: 'firstName'
		name: 'firstName'
		type: 'text'
		label: 'First Name'
		callback: [ :value | self account firstName: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getLastName [
	^ ERTextInputComponent
		id: 'lastName'
		name: 'lastName'
		type: 'text'
		label: 'Last Name'
		callback: [ :value | self account lastName: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getListOfDays [
	^ OrderedCollection new
		add:
			(ERCheckBox new
				id: 'monday';
				label: 'Monday (dd/mm/aa)';
				callback: [ :value | self daysAssist monday: value ]);
		add:
			(ERCheckBox new
				id: 'tuesday';
				label: 'Tuesday (dd/mm/aa)';
				callback: [ :value | self daysAssist tuesday: value ]);
		add:
			(ERCheckBox new
				id: 'wednesday';
				label: 'Wednesday (dd/mm/aa)';
				callback: [ :value | self daysAssist wednesday: value ]);
		add:
			(ERCheckBox new
				id: 'thursday';
				label: 'Thursday (dd/mm/aa)';
				callback: [ :value | self daysAssist thursday: value ]);
		add:
			(ERCheckBox new
				id: 'friday';
				label: 'Friday (dd/mm/aa)';
				callback: [ :value | self daysAssist friday: value ]);
		yourself
]

{ #category : #initialization }
ERAdministrationPageContentView >> getListOfFoodPreference [
	^ OrderedCollection new
		add:
			(ERCheckBox new
				id: 'vegetarian';
				label: 'Vegetarian';
				callback: [ :value | value ifTrue: [ self account diet: 'vegetarian' ] ];
				name: 'vegetarian');
		add:
			(ERCheckBox new
				id: 'vegan';
				label: 'Vegan';
				callback: [ :value | value ifTrue: [ self account diet: 'vegan' ] ];
				name: 'vegan');
		yourself
]

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> getLoginController [
	^ ERLoginController new
		email: self user email;
		password: self user password;
		yourself.
]

{ #category : #initialization }
ERAdministrationPageContentView >> getMessageLogin [
	^ (ERComponentAlert warningAlert id: 'loginAlert')
]

{ #category : #initialization }
ERAdministrationPageContentView >> getMessageRegister [
	^ (ERComponentAlert warningAlert id: 'registerAlert')
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationAddress [
	^ ERTextInputComponent
		id: 'orgAddress'
		name: 'orgAddress'
		type: 'text'
		label: 'Address'
		callback: [ :value | self afiliationInfo address: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationCity [
	^ ERTextInputComponent
		id: 'orgCity'
		name: 'orgCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self afiliationInfo city: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationName [
	^ ERTextInputComponent
		id: 'orgName'
		name: 'orgName'
		type: 'text'
		label: 'Organization Name'
		callback: [ :value | self afiliationInfo name: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationPostal [
	^ ERTextInputComponent
		id: 'orgPostal'
		name: 'orgPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self afiliationInfo postalZipCode: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationProvince [
	^ ERTextInputComponent
		id: 'orgProvince'
		name: 'orgProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self afiliationInfo provinceState: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getPasswordLogin [
	^ (ERTextInputComponent
				id: 'password'
				name: 'password'
				type: 'password'
				label: 'Password'
				callback: [ :value | self user password: (ERUser hashPassword: value) asString ])
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRegisterButton [
	^ ERButtonRegister new
		id: 'registerAttendee';
		callback: [ self registerAttendee ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRegisterConfirmPassword [
	^ ERTextInputComponent
		id: 'confirmPassword'
		name: 'confirmPassword'
		type: 'password'
		label: 'Confirm password'
]

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> getRegisterController [
	^ ERRegisterAttendeeController new
		aUser: self user;
		affiliationInfo: self afiliationInfo;
		daysAssist: self daysAssist;
		anAccount: self account;
		invoice: self invoice;
		yourself.
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRegisterEmail [
	^ ERTextInputComponent
		id: 'registerEmail'
		name: 'registerEmail'
		type: 'text'
		label: 'Email'
		callback: [ :value | self user email: (value asString ) ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRegisterPassword [
	^ ERTextInputComponent
		id: 'registerPassword'
		name: 'registerPassword'
		type: 'password'
		label: 'Password'
		callback: [ :value | self user password: (ERUser hashPassword: value) asString ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> initialize [
	super initialize.
	user := ERUser new.
	account := ERAccount new.
	daysAssist := ERDaysAssist new.
	afiliationInfo := ERAfiliation new.
	invoice := ERInvoice new.
	self initializeLoginComponent .
	self initializeRegisterComponent .
]

{ #category : #initialization }
ERAdministrationPageContentView >> initializeLoginComponent [
	loginComponent := ERLoginComponent new
		messageComponent: self getMessageLogin;
		emailComp: self getEmailLogin;
		passComp: self getPasswordLogin;
		buttonComp: self getButtonLogin.
]

{ #category : #initialization }
ERAdministrationPageContentView >> initializeRegisterComponent [
	registerComponent := ERAdministrationRegisterView new
		firstName: self getFirstName ;
		lastName: self getLastName ;
		registerEmail: self getRegisterEmail ;
		registerPassword: self getRegisterPassword ;
		registerConfirmPassword: self getRegisterConfirmPassword;
		contactAddress: self getContactAddress ;
		contactCity: self getContactCity ;
		contactProvince: self getContactProvince ;
		contactPostal: self getContactPostal ;
		contactFacebook: self getContactFacebook ;
		contactTwitter: self getContactTwitter ;
		contactHomePage: self getContactHomePage ;
		organizationName: self getOrganizationName ;
		organizationAddress: self getOrganizationAddress ;
		organizationCity: self getOrganizationCity ;
		organizationProvince: self getOrganizationProvince ;
		organizationPostal: self getOrganizationPostal ;
		registerButton: self getRegisterButton;
		listOfDays: self getListOfDays;
		listOfFoodPreference: self getListOfFoodPreference ;
		additionalText: self getContactAdditionalText ;
		keywords: self getContactKeywords ;
		messageComponent: self getMessageRegister;
		yourself .
]

{ #category : #accessing }
ERAdministrationPageContentView >> invoice [
	^ invoice
]

{ #category : #accessing }
ERAdministrationPageContentView >> invoice: anObject [
	invoice := anObject
]

{ #category : #accessing }
ERAdministrationPageContentView >> loginComponent [
	^ loginComponent
]

{ #category : #accessing }
ERAdministrationPageContentView >> loginComponent: anObject [
	loginComponent := anObject
]

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> loginUser [
	| userValidate controller |
	controller := self getLoginController.
	userValidate := controller validateLogin.
	userValidate notNil
		ifTrue: [ self answer: userValidate ]
		ifFalse:
			[ loginComponent messageComponent errorMessage: 'Login failed.' ]
]

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> registerAttendee [
	| controller anUser|
	controller := self getRegisterController.
	anUser := controller register.
	anUser ifNil: [ registerComponent messageComponent errorMessage: 'This email is already registered' ]
	ifNotNil: [ self answer: anUser  ]
]

{ #category : #accessing }
ERAdministrationPageContentView >> registerComponent [
	^ registerComponent
]

{ #category : #accessing }
ERAdministrationPageContentView >> registerComponent: anObject [
	registerComponent := anObject
]

{ #category : #rendering }
ERAdministrationPageContentView >> renderContentOn: html [
	html render: (ERAdministrationNavView new).
	html render: self loginComponent.
	html render: self registerComponent .
	html render: (ERAdministrationRegisterAsGroupManagerView new).
	html render: (ERAdministrationForgotPassView new).
	html render: (ERAdministrationFooterView  new).
]

{ #category : #accessing }
ERAdministrationPageContentView >> user [
	^ user
]

{ #category : #accessing }
ERAdministrationPageContentView >> user: anObject [
	user := anObject
]
