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
		'groupManagerUser',
		'registerAsGroupComponent'
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

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> getCountries [
	  ^ #('Select Country' 'United States' 'United Kingdom' 'Afghanistan' 'Albania' 'Algeria' 'American Samoa' 'Andorra' 'Angola' 'Anguilla'
'Antarctica' 'Antigua and Barbuda' 'Argentina' 'Armenia' 'Aruba' 'Australia' 'Austria' 'Azerbaijan' 'Bahamas' 'Bahrain' 'Bangladesh'
'Barbados' 'Belarus' 'Belgium' 'Belize' 'Benin' 'Bermuda' 'Bhutan' 'Bolivia' 'Bosnia and Herzegovina' 'Botswana' 'Bouvet Island'
'Brazil' 'British Indian Ocean Territory' 'Brunei Darussalam' 'Bulgaria' 'Burkina Faso' 'Burundi' 'Cambodia' 'Cameroon' 'Canada' 
'Cape Verde' 'Cayman Islands' 'Central African Republic' 'Chad' 'Chile' 'China' 'Christmas Island' 'Cocos (Keeling) Islands' 'Colombia'
'Comoros' 'Congo' 'Congo, The Democratic Republic of The' 'Cook Islands' 'Costa Rica' 'Cote D'ivoire' 'Croatia' 'Cuba' 'Cyprus' 
'Czech Republic' 'Denmark' 'Djibouti' 'Dominica' 'Dominican Republic' 'Ecuador' 'Egypt' 'El Salvador' 'Equatorial Guinea' 'Eritrea'
'Estonia' 'Ethiopia' 'Falkland Islands (Malvinas)' 'Faroe Islands' 'Fiji' 'Finland' 'France' 'French Guiana' 'French Polynesia'
'French Southern Territories' 'Gabon' 'Gambia' 'Georgia' 'Germany' 'Ghana' 'Gibraltar' 'Greece' 'Greenland' 'Grenada' 'Guadeloupe' 'Guam'
'Guatemala' 'Guinea' 'Guinea-bissau' 'Guyana' 'Haiti' 'Heard Island and Mcdonald Islands' 'Holy See (Vatican City State)' 'Honduras' 
'Hong Kong' 'Hungary' 'Iceland' 'India' 'Indonesia' 'Iran, Islamic Republic of' 'Iraq' 'Ireland' 'Israel' 'Italy' 'Jamaica' 'Japan'
'Jordan' 'Kazakhstan' 'Kenya' 'Kiribati' 'Korea, Democratic People's Republic of' 'Korea, Republic of' 'Kuwait' 'Kyrgyzstan'
'Lao People's Democratic Republic' 'Latvia' 'Lebanon' 'Lesotho' 'Liberia' 'Libyan Arab Jamahiriya' 'Liechtenstein' 'Lithuania' 'Luxembourg'
'Macao' 'Macedonia, The Former Yugoslav Republic of' 'Madagascar' 'Malawi' 'Malaysia' 'Maldives' 'Mali' 'Malta' 'Marshall Islands' 
'Martinique' 'Mauritania' 'Mauritius' 'Mayotte' 'Mexico' 'Micronesia, Federated States of' 'Moldova, Republic of' 'Monaco' 'Mongolia' 'Montserrat'
'Morocco' 'Mozambique' 'Myanmar' 'Namibia' 'Nauru' 'Nepal' 'Netherlands' 'Netherlands Antilles' 'New Caledonia' 'New Zealand' 'Nicaragua'
'Niger' 'Nigeria' 'Niue' 'Norfolk Island' 'Northern Mariana Islands' 'Norway' 'Oman' 'Pakistan' 'Palau' 'Palestinian Territory, Occupied'
'Panama' 'Papua New Guinea' 'Paraguay' 'Peru' 'Philippines' 'Pitcairn' 'Poland' 'Portugal' 'Puerto Rico' 'Qatar' 'Reunion' 'Romania'
'Russian Federation' 'Rwanda' 'Saint Helena' 'Saint Kitts and Nevis' 'Saint Lucia' 'Saint Pierre and Miquelon' 
'Saint Vincent and The Grenadines' 'Samoa' 'San Marino' 'Sao Tome and Principe' 'Saudi Arabia' 'Senegal' 'Serbia and Montenegro' 
'Seychelles' 'Sierra Leone' 'Singapore' 'Slovakia' 'Slovenia' 'Solomon Islands' 'Somalia' 'South Africa' 
'South Georgia and The South Sandwich Islands' 'Spain' 'Sri Lanka' 'Sudan' 'Suriname' 'Svalbard and Jan Mayen' 'Swaziland' 'Sweden'
'Switzerland' 'Syrian Arab Republic' 'Taiwan, Province of China' 'Tajikistan' 'Tanzania, United Republic of' 'Thailand' 'Timor-leste' 'Togo'
'Tokelau' 'Tonga' 'Trinidad and Tobago' 'Tunisia' 'Turkey' 'Turkmenistan' 'Turks and Caicos Islands' 'Tuvalu' 'Uganda' 'Ukraine' 
'United Arab Emirates' 'United Kingdom' 'United States' 'United States Minor Outlying Islands' 'Uruguay' 'Uzbekistan' 'Vanuatu'
'Venezuela' 'Viet Nam' 'Virgin Islands, British' 'Virgin Islands, 'U.S.' 'Wallis and Futuna' 'Western Sahara' 'Yemen' 'Zambia' 'Zimbabwe')
]

{ #category : #initialization }
ERAdministrationPageContentView >> getCountry [
	^ (ERTextSelectComponent
		id: 'countries'
		label: 'Country'
		listOption: self getCountries
		callback: [ :selectedOption | account country: selectedOption ])
]

{ #category : #'as yet unclassified' }
ERAdministrationPageContentView >> getCurrencyType [
	^ (ERTextSelectComponent
		id: 'currencyType'
		label: 'Currency Type: '
		listOption: #('Euro' 'Dollar')
		callback: [ :selectedOption | account paymentCurrency: selectedOption ])
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
ERAdministrationPageContentView >> getFirstNameOfGroupManager [
	^ registerComponent 
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
ERAdministrationPageContentView >> getLastNameOfGroupManager [
	^ registerAsGroupComponent lastName callback: [ :value | self account lastName: (value asString ) ]
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
ERAdministrationPageContentView >> getPaymentType [
	^ (ERTextSelectComponent
		id: 'paymentType'
		label: 'Payment Type: '
		listOption: #('Bank transfer' 'Credit Card')
		callback: [ :selectedOption | account paymentType: selectedOption ])
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRadioButtonForGender [
	^ OrderedCollection new
		add:
			(ERRadioButtonComponents new
				label: 'Female';
				checked: false;
				callback: [ :value | self account gender: 'female' ]);
		add: (ERRadioButtonComponents new
				label: 'Male';
				checked: false;
				callback: [ :value | self account gender: 'male' ]); yourself 
]

{ #category : #initialization }
ERAdministrationPageContentView >> getRegisterAsGroupManagerEmail [
	registerAsGroupComponent registerEmail callback: [ :value | self groupManagerUser email: (value asString ) ]
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
ERAdministrationPageContentView >> getRegisterPasswordForGroupManager [
	registerAsGroupComponent registerPassword callback: [ :value | self groupManagerUser password: (ERUser hashPassword: value) asString ]
]

{ #category : #initialization }
ERAdministrationPageContentView >> getTShirtSize [
	^ (ERTextSelectComponent
		id: 'sel1'
		label: 'Tshirt Size:'
		listOption: #('XS' 'S' 'M' 'L' 'XL' 'XXL' 'XXXL' 'XXXXL')
		callback: [ :selectedObject | account polosize: selectedObject ])
]

{ #category : #accessing }
ERAdministrationPageContentView >> groupManagerUser [
	^ groupManagerUser
]

{ #category : #accessing }
ERAdministrationPageContentView >> groupManagerUser: anObject [
	groupManagerUser := anObject
]

{ #category : #initialization }
ERAdministrationPageContentView >> initialize [
	super initialize.
	user := ERUser new.
	groupManagerUser := ERUser asGroupManager .
	account := ERAccount new.
	daysAssist := ERDaysAssist new.
	afiliationInfo := ERAfiliation new.
	invoice := ERInvoice new.
	self initializeLoginComponent .
	self initializeRegisterComponent .
	self initializeRegisterAsGroupManagerComponent .
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
ERAdministrationPageContentView >> initializeRegisterAsGroupManagerComponent [
	registerAsGroupComponent := ERAdministrationRegisterAsGroupManagerView
		new
		userComponent:
			(ERAdministrationUserRegister new
				firstName:
					(ERTextInputComponent
						id: 'firstNameGM'
						name: 'firstNameGM'
						type: 'text'
						label: 'First Name'
						callback: [ :value | self account firstName: value ]);
				lastName:
					(ERTextInputComponent
						id: 'lastNameGM'
						name: 'lastNameGM'
						type: 'text'
						label: 'Last Name'
						callback: [ :value | self account lastName: value ]);
				registerEmail:
					(ERTextInputComponent
						id: 'registerEmailGM'
						name: 'registerEmailGM'
						type: 'text'
						label: 'Email'
						callback: [ :value | self user email: value ]);
				registerPassword:
					(ERTextInputComponent
						id: 'registerPasswordGM'
						name: 'registerPasswordGM'
						type: 'password'
						label: 'Password'
						callback:
							[ :value | self user password: (ERUser hashPassword: value) asString ]);
				registerConfirmPassword:
					(ERTextInputComponent
						id: 'registerConfirmPasswordGM'
						name: 'registerConfirmPasswordGM'
						type: 'password'
						label: 'Confirm Password'
						callback: [ :value |  ]));
		affiliationComponent:
			(ERAdministrationAffiliationInformationRegister new
				organizationName:
					(ERTextInputComponent
						id: 'organizationNameGM'
						name: 'organizationNameGM'
						type: 'text'
						label: 'Organization Name'
						callback: [ :value | self afiliationInfo name: value ]);
				organizationAddress:
					(ERTextInputComponent
						id: 'organizationAddressGM'
						name: 'organizationAddressGM'
						type: 'text'
						label: 'Organization Addrees'
						callback: [ :value | self afiliationInfo address: value ]);
				organizationCity:
					(ERTextInputComponent
						id: 'organizationCityGM'
						name: 'organizationCityGM'
						type: 'text'
						label: 'Organization City'
						callback: [ :value | self afiliationInfo city: value ]);
				organizationCountry:
					(ERTextSelectComponent
						id: 'organizationCountry'
						label: 'Country:'
						listOption: ERAdministrationContactInformationRegister countries
						callback:
							[ :selectedObject | self afiliationInfo country: selectedObject ]);
				organizationProvince:
					(ERTextInputComponent
						id: 'organizationProvinceStateGM'
						name: 'organizationProvinceStateGM'
						type: 'text'
						label: 'Province / State'
						callback: [ :value | self afiliationInfo provinceState: value ]);
				organizationPostal:
					(ERTextInputComponent
						id: 'organizationPostalGM'
						name: 'organizationPostalGM'
						type: 'text'
						label: 'Postal / Zip code'
						callback: [ :value | self afiliationInfo postalZipCode: value ]);
				membershipType:
					(ERTextSelectComponent
						id: 'organizationMembership'
						label: 'Membership Type:'
						listOption: #('Industrial' 'Other' 'Professor / Reseacher' 'Student')
						callback:
							[ :selectedObject | self afiliationInfo membershipType: selectedObject ]));
		registerButton:
			(ERButtonRegister new
				id: 'registerAsGroupManager';
				callback: [ self registerAsGroupManager ]);
		messageComponent:
			(ERComponentAlert warningAlert id: 'registerAsGroupManagerAlert');
		yourself
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
		tShirtSize: self getTShirtSize;
		paymentType: self getPaymentType;
		currency: self getCurrencyType;
		listGender: self getRadioButtonForGender;
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

{ #category : #accessing }
ERAdministrationPageContentView >> registerAsGroupComponent [
	^ registerAsGroupComponent
]

{ #category : #accessing }
ERAdministrationPageContentView >> registerAsGroupComponent: anObject [
	registerAsGroupComponent := anObject
]

{ #category : #initialization }
ERAdministrationPageContentView >> registerAsGroupManager [
	| controller anUser|
	self user role: 'groupManager'.
	controller := (ERRegisterAttendeeController new
		aUser: self user;
		affiliationInfo: self afiliationInfo;
		anAccount: self account;
		yourself).
	anUser := controller registerAsGroupManager .
	anUser ifNil: [ self messageComponent errorMessage: 'This email is already registered' ]
	ifNotNil: [ self answer: anUser  ]
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
	html render: self registerAsGroupComponent. "(ERAdministrationRegisterAsGroupManagerView new)".
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
