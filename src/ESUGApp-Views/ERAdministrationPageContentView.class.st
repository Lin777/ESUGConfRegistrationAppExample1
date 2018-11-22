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

{ #category : #initialization }
ERAdministrationPageContentView class >> initialize [
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
	addLibrary: JQValidateForm ;
  preferenceAt: #sessionClass put: ERSession.
]

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
ERAdministrationPageContentView >> getRegisterButton [
	^ ERButtonRegister new
		id: 'registerAttendee';
		callback: [ | userRegister |
			userRegister := self registerAttendee.
			"userRegister
				ifNotNil: [ self session login: userRegister.
					self call: ERAdministrationLoggedInView new]"
				self answer: userRegister  ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRegisterConfirmPassword [
	^ ERTextInputComponent
		id: 'confirmPassword'
		name: 'confirmPassword'
		type: 'password'
		label: 'Confirm password'
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
		callback:
			[ :value | self user password: (ERUser hashPassword: value) asString ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> initialize [
	super initialize.
	user := ERUser new.
	self initializeLoginComponent .
	self initializeRegisterComponent .
]

{ #category : #initialization }
ERAdministrationPageContentView >> initializeLoginComponent [
	loginComponent := ERLoginComponent new
		emailComp:
			(ERTextInputComponent
				id: 'email'
				name: 'email'
				type: 'text'
				label: 'Email address'
				callback: [ :value | self user email: value asString ]);
		passComp:
			(ERTextInputComponent
				id: 'password'
				name: 'password'
				type: 'password'
				label: 'Password'
				callback: [ :value | self user password: (ERUser hashPassword: value) asString ]);
		buttonComp:
			(ERButton
				id: 'loginbutton'
				type: 'submit'
				label: 'Login'
				callback: [ | userValidated |
					userValidated := self validateUser.
					self answer: userValidated ])
]

{ #category : #initialization }
ERAdministrationPageContentView >> initializeRegisterComponent [
	account := ERAccount new.
	daysAssist := ERDaysAssist new.
	afiliationInfo := ERAfiliation new.
	invoice := ERInvoice new.
	registerComponent := ERAdministrationRegisterView new
		step1:
			(ERForm new
				list:
					(OrderedCollection new
						add: self getFirstName;
						add: self getLastName;
						add: self getRegisterEmail;
						add: self getRegisterPassword;
						add: self getRegisterConfirmPassword;
						yourself));
		step2:
			(ERForm new
				list:
					(OrderedCollection new
						add: self getContactAddress;
						add: self getContactCity;
						add: self getContactProvince;
						add: self getContactPostal;
						add: self getContactFacebook;
						add: self getContactTwitter;
						add: self getContactHomePage;
						yourself));
		step4:
			(ERForm new
				list:
					(OrderedCollection new
						add: self getOrganizationName;
						add: self getOrganizationAddress;
						add: self getOrganizationCity;
						add: self getOrganizationProvince;
						add: self getOrganizationPostal;yourself ));
		registerButton: self getRegisterButton;
		daysAssist:
			(ERForm new
				list: self getListOfDays);
		checkboxFood:
			(ERForm new
				list: self getListOfFoodPreference);
		additionalText: self getContactAdditionalText ;
		keywords: self getContactKeywords .
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
	controller := (ERLoginController new
		email: self user email;
		password: self user password;
		yourself).
	userValidate := controller validateLogin.
	^ userValidate
]

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> registerAttendee [
	|controller|
	
	controller := ERRegisterAttendeeController new aUser: self user; affiliationInfo: self afiliationInfo; daysAssist: self daysAssist; anAccount: self account; invoice: self invoice; yourself.
	Transcript show: 'Call a controller'.
	^ controller register.
	
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
	html render: self registerComponent ."(ERAdministrationRegisterView new)."
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

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> validateUser [
	| validatedUser |
	validatedUser := self loginUser.
		^ validatedUser 
]
