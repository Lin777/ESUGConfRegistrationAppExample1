Class {
	#name : #ERAdministrationRegisterAsGroupManagerView,
	#superclass : #WAComponent,
	#instVars : [
		'userComponent',
		'affiliationComponent',
		'registerButton',
		'messageComponent',
		'user',
		'affiliation',
		'account'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> account [
	^ account
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> account: anObject [
	account := anObject
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> affiliation [
	^ affiliation
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> affiliation: anObject [
	affiliation := anObject
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> affiliationComponent [
	^ affiliationComponent
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> affiliationComponent: anObject [
	affiliationComponent := anObject
]

{ #category : #rendering }
ERAdministrationRegisterAsGroupManagerView >> affiliationInformationForm [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self affiliationComponent organizationName;
						add: self affiliationComponent organizationAddress;
						add: self affiliationComponent organizationCity ;
						add: self affiliationComponent organizationCountry ;
						add: self affiliationComponent organizationProvince ;
						add: self affiliationComponent organizationPostal ;
						add: self affiliationComponent membershipType;
						yourself))
]

{ #category : #initialization }
ERAdministrationRegisterAsGroupManagerView >> getCountries [
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
ERAdministrationRegisterAsGroupManagerView >> getRegisterController [
	^ ERRegisterAttendeeController new
		aUser: self user;
		affiliationInfo: self affiliation;
		anAccount: self account;
		yourself.
]

{ #category : #initialization }
ERAdministrationRegisterAsGroupManagerView >> initialize [
	super initialize.
	"user := ERUser asGroupManager .
	account := ERAccount new.
	affiliation := ERAfiliation new.
	self initializeAffiliationComponent .
	self initializeUserComponent .
	self initializeButtonRegister .
	self initializeMessageComponent."
]

{ #category : #initialization }
ERAdministrationRegisterAsGroupManagerView >> initializeAffiliationComponent [
	affiliationComponent := ERAdministrationAffiliationInformationRegister new organizationName: (ERTextInputComponent
		id: 'organizationNameGM'
		name: 'organizationNameGM'
		type: 'text'
		label: 'Organization Name'
		callback: [ :value | self affiliation organizationName: value]);
	organizationAddress: (ERTextInputComponent
		id: 'organizationAddressGM'
		name: 'organizationAddressGM'
		type: 'text'
		label: 'Organization Addrees'
		callback: [ :value | self affiliation organizationAddress: value ]);
	organizationCity: (ERTextInputComponent
		id: 'organizationCityGM'
		name: 'organizationCityGM'
		type: 'text'
		label: 'Organization City'
		callback: [ :value | self affiliation organizationCity: value ]);
	organizationCountry: (ERTextSelectComponent
		id: 'organizationCountry'
		label: 'Country:'
		listOption: (ERAdministrationContactInformationRegister countries ) 
		callback: [ :selectedObject | self affiliation organizationCountry: selectedObject  ]);
	organizationProvince: (ERTextInputComponent
		id: 'organizationProvinceStateGM'
		name: 'organizationProvinceStateGM'
		type: 'text'
		label: 'Province / State'
		callback: [ :value | self affiliation organizationProvince: value ]);
	organizationPostal: (ERTextInputComponent
		id: 'organizationPostalGM'
		name: 'organizationPostalGM'
		type: 'text'
		label: 'Postal / Zip code'
		callback: [ :value | self affiliation organizationPostal: value ]);
	membershipType: (ERTextSelectComponent
		id: 'organizationMembership'
		label: 'Membership Type:'
		listOption: #('Industrial' 'Other' 'Professor / Reseacher' 'Student')
		callback: [ :selectedObject | self affiliation membershipType: selectedObject ])
]

{ #category : #initialization }
ERAdministrationRegisterAsGroupManagerView >> initializeButtonRegister [
	
	registerButton := ERButtonRegister new
		id: 'registerAsGroupManager';
		callback: [ self registerAsGroupManager ]
	
]

{ #category : #initialization }
ERAdministrationRegisterAsGroupManagerView >> initializeMessageComponent [
	messageComponent := ERComponentAlert warningAlert
		id: 'registerAsGroupManagerAlert'
]

{ #category : #initialization }
ERAdministrationRegisterAsGroupManagerView >> initializeUserComponent [
	userComponent := ERAdministrationUserRegister new
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
				callback: [ :value |  ])
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> messageComponent [
	^ messageComponent
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> messageComponent: anObject [
	messageComponent := anObject
]

{ #category : #initialization }
ERAdministrationRegisterAsGroupManagerView >> registerAsGroupManager [
	| controller anUser|
	controller := self getRegisterController.
	anUser := controller registerAsGroupManager .
	anUser ifNil: [ self messageComponent errorMessage: 'This email is already registered' ]
	ifNotNil: [ self answer: anUser  ]
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> registerButton [
	^ registerButton
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> registerButton: anObject [
	registerButton := anObject
]

{ #category : #rendering }
ERAdministrationRegisterAsGroupManagerView >> renderContentOn: html [
	html div id: 'portafolio'; class: 'container-fluid text-center'; with: [ 
		html form method: 'post'; id: 'formRegisterAsGroup'; name: 'formRegisterAsGroup'; attributeAt: 'role' put: 'form'; with: [
		html heading level3 with: 'User information'.
		html render: self userForm.
		html break.
		html heading level3 with: 'Affiliation Information'.
		html render: self affiliationInformationForm.
		html break.
		html render: self registerButton .
		 ]]
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> user [
	^ user
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> user: anObject [
	user := anObject
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> userComponent [
	^ userComponent
]

{ #category : #accessing }
ERAdministrationRegisterAsGroupManagerView >> userComponent: anObject [
	userComponent := anObject
]

{ #category : #rendering }
ERAdministrationRegisterAsGroupManagerView >> userForm [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self userComponent firstName;
						add: self userComponent lastName;
						add: self userComponent registerEmail ;
						add: self userComponent registerPassword;
						add: self userComponent registerConfirmPassword;
						yourself))
]
