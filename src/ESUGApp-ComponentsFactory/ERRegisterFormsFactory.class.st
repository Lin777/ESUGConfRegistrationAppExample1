Class {
	#name : #ERRegisterFormsFactory,
	#superclass : #Object,
	#instVars : [
		'user',
		'account',
		'affiliation',
		'daysAssist'
	],
	#category : #'ESUGApp-ComponentsFactory'
}

{ #category : #accessing }
ERRegisterFormsFactory >> account [
	^ account
]

{ #category : #accessing }
ERRegisterFormsFactory >> account: anObject [
	account := anObject
]

{ #category : #initialization }
ERRegisterFormsFactory >> additionalInformation [
	^ ERTemplateAdditionalInformationRegister new
				additionalText: self getContactAdditionalText;
				keywords: self getContactKeywords; yourself 
]

{ #category : #accessing }
ERRegisterFormsFactory >> affiliation [
	^ affiliation
]

{ #category : #accessing }
ERRegisterFormsFactory >> affiliation: anObject [
	affiliation := anObject
]

{ #category : #initialization }
ERRegisterFormsFactory >> affiliationInformation [
	^ ERTemplateAffiliationInformationRegister new
				membershipType: self getMembershipType ;
				organizationAddress: self getOrganizationAddress;
				organizationCity: self getOrganizationCity;
				organizationCountry: self getCountry;
				organizationName: self getOrganizationName;
				organizationProvince: self getOrganizationProvince;
				organizationPostal: self getOrganizationPostal; yourself 
]

{ #category : #initialization }
ERRegisterFormsFactory >> conferenceOptions [
	^ ERTemplateConferenceOptionsRegister new
				listGender: self getRadioButtonForGender;
				listOfDays: self getListOfDays;
				listOfFoodPreference: self getListOfFoodPreference;
				tShirtSize: self getTShirtSize; yourself 
]

{ #category : #accessing }
ERRegisterFormsFactory >> daysAssist [
	^ daysAssist
]

{ #category : #accessing }
ERRegisterFormsFactory >> daysAssist: anObject [
	daysAssist := anObject
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactAdditionalText [
	^ ERTextAreaComponent new
		label: 'Additional text';
		id: 'addInfoAddText';
		name: 'addInfoAddText';
		callback: [ :value | self account additionalText: (value asString) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactAddress [
	^ ERTextInputComponent
		id: 'contactAddress'
		name: 'contactAddress'
		type: 'text'
		label: 'Address'
		callback: [ :value | self account address: (value asString) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactCity [
	^ ERTextInputComponent
		id: 'contactCity'
		name: 'contactCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self account city: (value asString)]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactFacebook [
	^ ERTextInputComponent
		id: 'contactFacebook'
		name: 'contactFacebook'
		type: 'text'
		label: 'Facebook (URL)'
		callback: [ :value | self account facebook: (value asString) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactHomePage [
	^ ERTextInputComponent
		id: 'contactHomePage'
		name: 'contactHomePage'
		type: 'text'
		label: 'Home Page (URL)'
		callback: [ :value | self account homePage: (value asString) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactKeywords [
	^ ERTextInputComponent new
		id: 'addInfoKeywords';
		name: 'addInfoKeywords';
		type: 'text';
		callback: [ :value | self account keywords: value asString ];
		label: 'Keywords'
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactPostal [
	^ ERTextInputComponent
		id: 'contactPostal'
		name: 'contactPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self account postalZipCode: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactProvince [
	^ ERTextInputComponent
		id: 'contactProvince'
		name: 'contactProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self account provinceState: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getContactTwitter [
	^ ERTextInputComponent
		id: 'contactTwitter'
		name: 'contactTwitter'
		type: 'text'
		label: 'Twitter (URL)'
		callback: [ :value | self account twitter: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getCountries [
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
ERRegisterFormsFactory >> getCountry [
	^ (ERTextSelectComponent
		id: 'countries'
		label: 'Country'
		listOption: self getCountries
		callback: [ :selectedOption | account country: selectedOption ])
]

{ #category : #initialization }
ERRegisterFormsFactory >> getCountry: anID [
	^ (ERTextSelectComponent
		id: anID
		label: 'Country'
		listOption: self getCountries
		callback: [ :selectedOption | affiliation country: selectedOption ])
]

{ #category : #initialization }
ERRegisterFormsFactory >> getCurrencyType [
	^ (ERTextSelectComponent
		id: 'currencyType'
		label: 'Currency Type: '
		listOption: #('Euro' 'Dollar')
		callback: [ :selectedOption | account paymentCurrency: selectedOption ])
]

{ #category : #initialization }
ERRegisterFormsFactory >> getEmailLogin [
	^ (ERTextInputComponent
				id: 'email'
				name: 'email'
				type: 'text'
				label: 'Email address'
				callback: [ :value | self user email: value asString ])
]

{ #category : #initialization }
ERRegisterFormsFactory >> getFirstName [
	^ ERTextInputComponent
		id: 'firstName'
		name: 'firstName'
		type: 'text'
		label: 'First Name'
		callback: [ :value | self account firstName: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getLastName [
	^ ERTextInputComponent
		id: 'lastName'
		name: 'lastName'
		type: 'text'
		label: 'Last Name'
		callback: [ :value | self account lastName: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getListOfDays [
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
ERRegisterFormsFactory >> getListOfFoodPreference [
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
ERRegisterFormsFactory >> getLoginController [
	^ ERLoginController new
		email: self user email;
		password: self user password;
		yourself.
]

{ #category : #initialization }
ERRegisterFormsFactory >> getMembershipType [
	^ ERTextSelectComponent
		id: 'organizationMembership'
		label: 'Membership Type:'
		listOption: #('Industrial' 'Other' 'Professor / Reseacher' 'Student')
		callback: [ :selectedObject | self affiliation membershipType: selectedObject ]; yourself .
]

{ #category : #initialization }
ERRegisterFormsFactory >> getMessageLogin [
	^ (ERComponentAlert warningAlert id: 'loginAlert')
]

{ #category : #initialization }
ERRegisterFormsFactory >> getMessageRegister [
	^ (ERComponentAlert warningAlert id: 'registerAlert')
]

{ #category : #initialization }
ERRegisterFormsFactory >> getOrganizationAddress [
	^ ERTextInputComponent
		id: 'orgAddress'
		name: 'orgAddress'
		type: 'text'
		label: 'Address'
		callback: [ :value | self affiliation address: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getOrganizationCity [
	^ ERTextInputComponent
		id: 'orgCity'
		name: 'orgCity'
		type: 'text'
		label: 'City'
		callback: [ :value | self affiliation city: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getOrganizationName [
	^ ERTextInputComponent
		id: 'orgName'
		name: 'orgName'
		type: 'text'
		label: 'Organization Name'
		callback: [ :value | self affiliation name: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getOrganizationPostal [
	^ ERTextInputComponent
		id: 'orgPostal'
		name: 'orgPostal'
		type: 'text'
		label: 'Postal/ZipCode'
		callback: [ :value | self affiliation postalZipCode: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getOrganizationProvince [
	^ ERTextInputComponent
		id: 'orgProvince'
		name: 'orgProvince'
		type: 'text'
		label: 'Province/State'
		callback: [ :value | self affiliation provinceState: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getPaymentType [
	^ (ERTextSelectComponent
		id: 'paymentType'
		label: 'Payment Type: '
		listOption: #('Bank transfer' 'Credit Card')
		callback: [ :selectedOption | self account paymentType: selectedOption ])
]

{ #category : #initialization }
ERRegisterFormsFactory >> getRadioButtonForGender [
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
ERRegisterFormsFactory >> getRegisterButton [
	^ ERButtonRegister new
		id: 'registerAttendee';
		callback: [ self registerAttendee ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getRegisterConfirmPassword [
	^ ERTextInputComponent
		id: 'confirmPassword'
		name: 'confirmPassword'
		type: 'password'
		label: 'Confirm password'
]

{ #category : #initialization }
ERRegisterFormsFactory >> getRegisterController [
	^ ERRegisterAttendeeController new
		aUser: self user;
		affiliationInfo: self afiliationInfo;
		daysAssist: self daysAssist;
		anAccount: self account;
		invoice: self invoice;
		yourself.
]

{ #category : #initialization }
ERRegisterFormsFactory >> getRegisterEmail [
	^ ERTextInputComponent
		id: 'registerEmail'
		name: 'registerEmail'
		type: 'text'
		label: 'Email'
		callback: [ :value | self user email: (value asString ) ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getRegisterPassword [
	^ ERTextInputComponent
		id: 'registerPassword'
		name: 'registerPassword'
		type: 'password'
		label: 'Password'
		callback: [ :value | self user password: (ERUser hashPassword: value) asString ]
]

{ #category : #initialization }
ERRegisterFormsFactory >> getTShirtSize [
	^ (ERTextSelectComponent
		id: 'sel1'
		label: 'Tshirt Size:'
		listOption: #('XS' 'S' 'M' 'L' 'XL' 'XXL' 'XXXL' 'XXXXL')
		callback: [ :selectedObject | self account polosize: selectedObject ])
]

{ #category : #accessing }
ERRegisterFormsFactory >> user [
	^ user
]

{ #category : #accessing }
ERRegisterFormsFactory >> user: anObject [
	user := anObject
]

{ #category : #initialization }
ERRegisterFormsFactory >> userContactInformation [
			^ ERTemplateContactInformationRegister new
				contactAddress: self getContactAddress;
				contactCity: self getContactCity;
				contactCountry: (self getCountry: 'userCountry' );
				contactFacebook: self getContactFacebook;
				contactHomePage: self getContactHomePage;
				contactProvince: self getContactProvince;
				contactPostal: self getContactPostal;
				contactTwitter: self getContactTwitter; yourself 
]

{ #category : #initialization }
ERRegisterFormsFactory >> userInformation [
	^ ERTemplateUserRegister new
				firstName: self getFirstName;
				lastName: self getLastName;
				registerEmail: self getRegisterEmail;
				registerPassword: self getRegisterPassword;
				registerConfirmPassword: self getRegisterConfirmPassword;
				yourself .
]
