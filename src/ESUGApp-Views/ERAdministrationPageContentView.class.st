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
		'invoice'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #initialization }
ERAdministrationPageContentView class >> canBeRoot [ 	
	^ true
]

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
ERAdministrationPageContentView >> getContactAddress [
	^ ERTextInputComponent
		id: 'contactAddress'
		name: 'contactAddress'
		type: 'text'
		label: 'Address'
		callback: [ :value | self account address: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactCity [
	^ ERTextInputComponent
		id: 'contactCity'
		name: 'contactCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self account city: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactFacebook [
	^ ERTextInputComponent
		id: 'contactFacebook'
		name: 'contactFacebook'
		type: 'text'
		label: 'Facebook (URL)'
		callback: [ :value | self account facebook: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactHomePage [
	^ ERTextInputComponent
		id: 'contactHomePage'
		name: 'contactHomePage'
		type: 'text'
		label: 'Home Page (URL)'
		callback: [ :value | self account homePage: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactPostal [
	^ ERTextInputComponent
		id: 'contactPostal'
		name: 'contactPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self account postalZipCode: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactProvince [
	^ ERTextInputComponent
		id: 'contactProvince'
		name: 'contactProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self account provinceState: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getContactTwitter [
	^ ERTextInputComponent
		id: 'contactTwitter'
		name: 'contactTwitter'
		type: 'text'
		label: 'Twitter (URL)'
		callback: [ :value | self account twitter: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getFirstName [
	^ ERTextInputComponent
		id: 'firstName'
		name: 'firstName'
		type: 'text'
		label: 'First Name'
		callback: [ :value | self account firstName: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getLastName [
	^ ERTextInputComponent
		id: 'lastName'
		name: 'lastName'
		type: 'text'
		label: 'Last Name'
		callback: [ :value | self account lastName: value ]
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
				callback: [ :value | Transcript show: value ];
				name: 'vegetarian');
		add:
			(ERCheckBox new
				id: 'vegan';
				label: 'Vegan';
				callback: [ :value | Transcript show: value ];
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
		callback: [ :value | self afiliationInfo address: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationCity [
	^ ERTextInputComponent
		id: 'orgCity'
		name: 'orgCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self afiliationInfo city: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationName [
	^ ERTextInputComponent
		id: 'orgName'
		name: 'orgName'
		type: 'text'
		label: 'Organization Name'
		callback: [ :value | self afiliationInfo name: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationPostal [
	^ ERTextInputComponent
		id: 'orgPostal'
		name: 'orgPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self afiliationInfo postalZipCode: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getOrganizationProvince [
	^ ERTextInputComponent
		id: 'orgProvince'
		name: 'orgProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self afiliationInfo provinceState: value ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRegisterButton [
	^ ERButtonRegister new
		id: 'registerAttendee';
		callback: [ self registerAttendee.	"self answer: user. "
			self call: ERAdministrationLoggedInView new ]
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
		callback: [ :value | self user email: value ]
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
	loginComponent := ERLoginComponent new emailComp:
			(ERTextInputComponent
				id: 'email'
				name: 'email'
				type: 'text'
				label: 'Email address'
				callback: [ :value | self user email: value ]);
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
				callback: [ self validateUser ])
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
				list: self getListOfFoodPreference)
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
	controller := ERRegisterAttendeeController new aUser: self user; affiliationInfo: self afiliationInfo; daysAssist: self daysAssist; anAccount: self account; invoice: self invoice.
	controller register.
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
	validatedUser
		ifNotNil: [
			self session login: validatedUser.
			self call: ERAdministrationLoggedInView new].
	validatedUser
		ifNil: [ Transcript show: ', user nil' ]
]
