Class {
	#name : #ERRegisterUser,
	#superclass : #WAComponent,
	#instVars : [
		'userInformation',
		'userContactInformation',
		'conferenceOptions',
		'affiliationInformation',
		'additionalInformation',
		'currency',
		'paymentType',
		'registerButton',
		'user',
		'afiliationInfo',
		'daysAssist',
		'account',
		'invoice',
		'registerComponent',
		'messageComponent'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERRegisterUser >> account [
	^ account
]

{ #category : #accessing }
ERRegisterUser >> account: anObject [
	account := anObject
]

{ #category : #accessing }
ERRegisterUser >> additionalInformation [
	^ additionalInformation
]

{ #category : #accessing }
ERRegisterUser >> additionalInformation: anObject [
	additionalInformation := anObject
]

{ #category : #accessing }
ERRegisterUser >> affiliationInformation [
	^ affiliationInformation
]

{ #category : #accessing }
ERRegisterUser >> affiliationInformation: anObject [
	affiliationInformation := anObject
]

{ #category : #accessing }
ERRegisterUser >> afiliationInfo [
	^ afiliationInfo
]

{ #category : #accessing }
ERRegisterUser >> afiliationInfo: anObject [
	afiliationInfo := anObject
]

{ #category : #accessing }
ERRegisterUser >> conferenceOptions [
	^ conferenceOptions
]

{ #category : #accessing }
ERRegisterUser >> conferenceOptions: anObject [
	conferenceOptions := anObject
]

{ #category : #accessing }
ERRegisterUser >> currency [
	^ currency
]

{ #category : #accessing }
ERRegisterUser >> currency: anObject [
	currency := anObject
]

{ #category : #accessing }
ERRegisterUser >> daysAssist [
	^ daysAssist
]

{ #category : #accessing }
ERRegisterUser >> daysAssist: anObject [
	daysAssist := anObject
]

{ #category : #initialization }
ERRegisterUser >> getContactAdditionalText [
	^ ERTextAreaComponent new
		label: 'Additional text';
		id: 'addInfoAddText';
		name: 'addInfoAddText';
		callback: [ :value | self account additionalText: (value asString) ]
]

{ #category : #initialization }
ERRegisterUser >> getContactAddress [
	^ ERTextInputComponent
		id: 'contactAddress'
		name: 'contactAddress'
		type: 'text'
		label: 'Address'
		callback: [ :value | self account address: (value asString) ]
]

{ #category : #initialization }
ERRegisterUser >> getContactCity [
	^ ERTextInputComponent
		id: 'contactCity'
		name: 'contactCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self account city: (value asString)]
]

{ #category : #initialization }
ERRegisterUser >> getContactFacebook [
	^ ERTextInputComponent
		id: 'contactFacebook'
		name: 'contactFacebook'
		type: 'text'
		label: 'Facebook (URL)'
		callback: [ :value | self account facebook: (value asString) ]
]

{ #category : #initialization }
ERRegisterUser >> getContactHomePage [
	^ ERTextInputComponent
		id: 'contactHomePage'
		name: 'contactHomePage'
		type: 'text'
		label: 'Home Page (URL)'
		callback: [ :value | self account homePage: (value asString) ]
]

{ #category : #initialization }
ERRegisterUser >> getContactKeywords [
	^ ERTextInputComponent new
		id: 'addInfoKeywords';
		name: 'addInfoKeywords';
		type: 'text';
		callback: [ :value | self account keywords: value asString ];
		label: 'Keywords'
]

{ #category : #initialization }
ERRegisterUser >> getContactPostal [
	^ ERTextInputComponent
		id: 'contactPostal'
		name: 'contactPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self account postalZipCode: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getContactProvince [
	^ ERTextInputComponent
		id: 'contactProvince'
		name: 'contactProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self account provinceState: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getContactTwitter [
	^ ERTextInputComponent
		id: 'contactTwitter'
		name: 'contactTwitter'
		type: 'text'
		label: 'Twitter (URL)'
		callback: [ :value | self account twitter: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getCountries [
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
ERRegisterUser >> getCountry [
	^ ERTextSelectComponent
		id: 'countries'
		label: 'Country'
		listOption: self getCountries
		callback: [ :selectedOption | account country: selectedOption ]
]

{ #category : #initialization }
ERRegisterUser >> getCurrencyType [
	^ (ERTextSelectComponent
		id: 'currencyType'
		label: 'Currency Type: '
		listOption: #('Euro' 'Dollar')
		callback: [ :selectedOption | account paymentCurrency: selectedOption ])
]

{ #category : #initialization }
ERRegisterUser >> getFirstName [
	^ ERTextInputComponent
		id: 'firstName'
		name: 'firstName'
		type: 'text'
		label: 'First Name'
		callback: [ :value | self account firstName: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getLastName [
	^ ERTextInputComponent
		id: 'lastName'
		name: 'lastName'
		type: 'text'
		label: 'Last Name'
		callback: [ :value | self account lastName: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getListOfDays [
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
ERRegisterUser >> getListOfFoodPreference [
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
ERRegisterUser >> getMessageRegister [
	^ (ERComponentAlert warningAlert id: 'registerAlert')
]

{ #category : #initialization }
ERRegisterUser >> getOrganizationAddress [
	^ ERTextInputComponent
		id: 'orgAddress'
		name: 'orgAddress'
		type: 'text'
		label: 'Address'
		callback: [ :value | self afiliationInfo address: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getOrganizationCity [
	^ ERTextInputComponent
		id: 'orgCity'
		name: 'orgCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self afiliationInfo city: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getOrganizationName [
	^ ERTextInputComponent
		id: 'orgName'
		name: 'orgName'
		type: 'text'
		label: 'Organization Name'
		callback: [ :value | self afiliationInfo name: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getOrganizationPostal [
	^ ERTextInputComponent
		id: 'orgPostal'
		name: 'orgPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self afiliationInfo postalZipCode: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getOrganizationProvince [
	^ ERTextInputComponent
		id: 'orgProvince'
		name: 'orgProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self afiliationInfo provinceState: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getPaymentType [
	^ (ERTextSelectComponent
		id: 'paymentType'
		label: 'Payment Type: '
		listOption: #('Bank transfer' 'Credit Card')
		callback: [ :selectedOption | account paymentType: selectedOption ])
]

{ #category : #initialization }
ERRegisterUser >> getRadioButtonForGender [
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
ERRegisterUser >> getRegisterButton [
	^ ERButtonRegister new
		id: 'registerAttendee';
		callback: [ self registerAttendee ]
]

{ #category : #initialization }
ERRegisterUser >> getRegisterConfirmPassword [
	^ ERTextInputComponent
		id: 'confirmPassword'
		name: 'confirmPassword'
		type: 'password'
		label: 'Confirm password'
]

{ #category : #initialization }
ERRegisterUser >> getRegisterController [
	^ ERRegisterAttendeeController new
		aUser: self user;
		affiliationInfo: self afiliationInfo;
		daysAssist: self daysAssist;
		anAccount: self account;
		invoice: self invoice;
		yourself.
]

{ #category : #initialization }
ERRegisterUser >> getRegisterEmail [
	^ ERTextInputComponent
		id: 'registerEmail'
		name: 'registerEmail'
		type: 'text'
		label: 'Email'
		callback: [ :value | self user email: (value asString ) ]
]

{ #category : #initialization }
ERRegisterUser >> getRegisterPassword [
	^ ERTextInputComponent
		id: 'registerPassword'
		name: 'registerPassword'
		type: 'password'
		label: 'Password'
		callback: [ :value | self user password: (ERUser hashPassword: value) asString ]
]

{ #category : #initialization }
ERRegisterUser >> getTShirtSize [
	^ (ERTextSelectComponent
		id: 'sel1'
		label: 'Tshirt Size:'
		listOption: #('XS' 'S' 'M' 'L' 'XL' 'XXL' 'XXXL' 'XXXXL')
		callback: [ :selectedObject | account polosize: selectedObject ])
]

{ #category : #initialization }
ERRegisterUser >> initialize [
	super initialize.
	self initializeUserInformation.
	self initializeContactInformation.
	self initializeConferenceOptions.
	self initializeAffiliationInformation.
	self initializeAdditionalInformation.
]

{ #category : #initialization }
ERRegisterUser >> initializeContactInformation [
	userContactInformation := ERTemplateContactInformationRegister new
		contactAddress: self getContactAddress;
		contactCity: self getContactCity;
		contactCountry: self getCountry ;
		contactFacebook: self getContactFacebook ;
		contactHomePage: self getContactHomePage ;
		contactTwitter: self getContactTwitter ;
		contactProvince: self getContactProvince
		contact
]

{ #category : #initialization }
ERRegisterUser >> initializeUserInformation [
	userInformation := ERTemplateUserRegister new
		firstName: self getFirstName;
		lastName: self getLastName;
		registerPassword: self getRegisterPassword;
		registerConfirmPassword: self getRegisterConfirmPassword;
		registerEmail: self getRegisterEmail.
]

{ #category : #accessing }
ERRegisterUser >> invoice [
	^ invoice
]

{ #category : #accessing }
ERRegisterUser >> invoice: anObject [
	invoice := anObject
]

{ #category : #accessing }
ERRegisterUser >> messageComponent [
	^ messageComponent
]

{ #category : #accessing }
ERRegisterUser >> messageComponent: anObject [
	messageComponent := anObject
]

{ #category : #accessing }
ERRegisterUser >> paymentType [
	^ paymentType
]

{ #category : #accessing }
ERRegisterUser >> paymentType: anObject [
	paymentType := anObject
]

{ #category : #initialization }
ERRegisterUser >> registerAttendee [
	| controller anUser|
	controller := self getRegisterController.
	anUser := controller register.
	anUser ifNil: [  messageComponent errorMessage: 'This email is already registered' ]
	ifNotNil: [ self answer: anUser  ]
]

{ #category : #accessing }
ERRegisterUser >> registerButton [
	^ registerButton
]

{ #category : #accessing }
ERRegisterUser >> registerButton: anObject [
	registerButton := anObject
]

{ #category : #accessing }
ERRegisterUser >> registerComponent [
	^ registerComponent
]

{ #category : #accessing }
ERRegisterUser >> registerComponent: anObject [
	registerComponent := anObject
]

{ #category : #rendering }
ERRegisterUser >> renderContentOn: html [
	html heading: 'Welcome'
]

{ #category : #accessing }
ERRegisterUser >> user [
	^ user
]

{ #category : #accessing }
ERRegisterUser >> user: anObject [
	user := anObject
]

{ #category : #accessing }
ERRegisterUser >> userContactInformation [
	^ userContactInformation
]

{ #category : #accessing }
ERRegisterUser >> userContactInformation: anObject [
	userContactInformation := anObject
]

{ #category : #accessing }
ERRegisterUser >> userInformation [
	^ userInformation
]

{ #category : #accessing }
ERRegisterUser >> userInformation: anObject [
	userInformation := anObject
]
