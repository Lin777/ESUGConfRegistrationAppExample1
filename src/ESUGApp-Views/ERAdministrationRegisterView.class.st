Class {
	#name : #ERAdministrationRegisterView,
	#superclass : #WAComponent,
	#instVars : [
		'firstName',
		'lastName',
		'registerEmail',
		'registerPassword',
		'registerConfirmPassword',
		'contactAddress',
		'contactCity',
		'contactProvince',
		'contactPostal',
		'contactFacebook',
		'contactTwitter',
		'contactHomePage',
		'organizationName',
		'organizationAddress',
		'organizationCity',
		'organizationProvince',
		'organizationPostal',
		'listOfDays',
		'listOfFoodPreference',
		'contactAdditionalText',
		'contactKeywords',
		'step1',
		'step2',
		'step4',
		'registerButton',
		'daysAssist',
		'checkboxFood',
		'keywords',
		'additionalText',
		'messageComponent'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationRegisterView >> additionalText [
	^ additionalText
]

{ #category : #accessing }
ERAdministrationRegisterView >> additionalText: anObject [
	additionalText := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> checkboxFood [
	^ (ERForm new
				list: self listOfFoodPreference )
]

{ #category : #accessing }
ERAdministrationRegisterView >> checkboxFood: anObject [
	checkboxFood := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactAdditionalText [
	^ contactAdditionalText
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactAdditionalText: anObject [
	contactAdditionalText := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactAddress [
	^ contactAddress
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactAddress: anObject [
	contactAddress := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactCity [
	^ contactCity
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactCity: anObject [
	contactCity := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactFacebook [
	^ contactFacebook
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactFacebook: anObject [
	contactFacebook := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactHomePage [
	^ contactHomePage
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactHomePage: anObject [
	contactHomePage := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactKeywords [
	^ contactKeywords
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactKeywords: anObject [
	contactKeywords := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactPostal [
	^ contactPostal
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactPostal: anObject [
	contactPostal := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactProvince [
	^ contactProvince
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactProvince: anObject [
	contactProvince := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactTwitter [
	^ contactTwitter
]

{ #category : #accessing }
ERAdministrationRegisterView >> contactTwitter: anObject [
	contactTwitter := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> daysAssist [
	^ (ERForm new
				list: self listOfDays )
]

{ #category : #accessing }
ERAdministrationRegisterView >> firstName [
	^ firstName
]

{ #category : #accessing }
ERAdministrationRegisterView >> firstName: anObject [
	firstName := anObject
]

{ #category : #rendering }
ERAdministrationRegisterView >> food: html [
	html div
		class: 'form-group';
		with: [ html label: 'Food: '.
			html render: self checkboxFood ]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep1: html [
	html div
		class: 'tab-pane active';
		attributeAt: 'role' put: 'tabpanel';
		id: 'step1';
		with: [ html render: self step1.
			html unorderedList
				class: 'list-inline pull-right';
				with: [ html
						listItem: [ html
								render:
									(ERComponentButton nextStepButton
										id: 'next1';
										yourself) ] ] ]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep2: html [
	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'step2'; with: [
		html break .
		html render: self step2.
		html unorderedList class: 'list-inline pull-right'; with: [ 
			html listItem: [ 
				html render: (ERComponentButton previousButton id: 'prev1')].
			html listItem: [ 
				html render: (ERComponentButton nextStepButton id: 'next2') ]]]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep3: html [
	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'step3'; with: [
		html break .
		self itemDays: html.
		self gender: html.
		self polo: html.
		self food: html.
		html unorderedList class: 'list-inline pull-right'; with: [ 
			html listItem: [ 
				html render: (ERComponentButton previousButton id: 'prev2')].
			html listItem: [ 
				html render: (ERComponentButton nextStepButton id: 'next3'). ]]
		]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep4: html [
	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'step4'; with: [
		html break .
		html render: self step4.
		html unorderedList class: 'list-inline pull-right'; with: [ 
			html listItem: [ 
				html render: (ERComponentButton previousButton id: 'prev3')].
			html listItem: [ 
				html render: (ERComponentButton nextStepButton id: 'next4'). ]]]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep5: html [
	html div
		class: 'tab-pane';
		attributeAt: 'role' put: 'tabpanel';
		id: 'step5';
		with: [ html break.
			html render: self keywords.
			html render: self additionalText.
			html unorderedList
				class: 'list-inline pull-right';
				with: [ html listItem: [ html render: (ERComponentButton previousButton id: 'prev4') ].
					html listItem: [ html render: (ERComponentButton skipButton id: 'skip5') ].
					html listItem: [ html render: (ERComponentButton nextStepButton id: 'next5') ] ] ]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep6: html [
	html div
		class: 'tab-pane';
		attributeAt: 'role' put: 'tabpanel';
		id: 'step6';
		with: [ html paragraph with: 'Pay by bank transfer or paypal/card. Pay in euros.'.
			html paragraph
				with:
					'IMPORTANT: Bank transfers should mention "ESUG" & the registrant name(s) as a comment (e.g. "ESUG John Johnson").'.
			html paragraph
				with:
					'Use the inter-country IBAN / BIC data (may need to ask your bank to process the payment).'.
			html break.
			html div
				class: 'form-group';
				with: [ html label
						attributeAt: 'for' put: 'sel2';
						with: 'Payment Type:'.
					html select
						class: 'form-control';
						id: 'sel2';
						with: [ html option: 'Bank transfer'.
							html option: 'Credit Card' ] ].
			html
				render:
					(ERTextInputComponent new
						id: 'reductionTicket';
						name: 'reductionTicket';
						type: 'text';
						callback: [ :value | Transcript show: value asString ];
						label: 'Reduction ticket code').
			html div
				class: 'form-group';
				with: [ html label
						attributeAt: 'for' put: 'sel3';
						with: 'Payment Type:'.
					html select
						class: 'form-control';
						id: 'sel3';
						with: [ html option: 'Dollar'.
							html option: 'Euro' ] ].
			html unorderedList
				class: 'list-inline pull-right';
				with: [ html listItem: [ html render: (ERComponentButton previousButton id: 'prev5') ].
					html
						listItem: [ html
								render:
									(ERComponentButton skipButton
										id: 'skip6';
										callback: self registerButton callback) ].
					html listItem: [ html render: self registerButton ] ] ]
]

{ #category : #rendering }
ERAdministrationRegisterView >> gender: html [
	html label: 'Gender:'.
	html div class: 'form-group'; with: [ 
		html label class: 'radio-inline'; with:[
			html radioButton name: 'optRadio'; checked: true	; with: 'Female']. 
		html label class: 'radio-inline'; with:[
			html radioButton name: 'optRadio'; with: 'Male'	].]
]

{ #category : #initialization }
ERAdministrationRegisterView >> initialize [
	super initialize
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemDays: html [
	html label: 'Days: '.
	html div
		class: 'form-group';
		with: [ html render: self daysAssist ]
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListAditiaonalInformation: html [
	html
		render:
			(ERTab
				class: 'disabled'
				url: 'step5'
				title: 'Additional information'
				icon: 'glyphicon glyphicon-plus')
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListAfiliationInformation: html [
	html
		render:
			(ERTab
				class: 'disabled'
				url: 'step4'
				title: 'Afiliation information'
				icon: 'glyphicon glyphicon-briefcase')
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListComplete: html [
	html
		render:
			(ERTab
				class: 'disabled'
				url: 'complete'
				title: 'Complete'
				icon: 'glyphicon glyphicon-ok')
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListConferenceOptions: html [
	html
		render:
			(ERTab
				class: 'disabled'
				url: 'step3'
				title: 'Conference Options'
				icon: 'glyphicon glyphicon-copy')
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListPaymentRegister: html [
	html
		render:
			(ERTab
				class: 'disabled'
				url: 'step6'
				title: 'Payment information'
				icon: 'glyphicon glyphicon-euro')
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListPersonalInformation: html [
	html
		render:
			(ERTab
				class: 'disabled'
				url: 'step2'
				title: 'Personal Information'
				icon: 'glyphicon glyphicon-home')
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListRegister: html [
html render: (ERTab class: 'active' url: 'step1' title: 'Registration' icon: 'glyphicon glyphicon-user' ).

]

{ #category : #accessing }
ERAdministrationRegisterView >> keywords [
	^ keywords
]

{ #category : #accessing }
ERAdministrationRegisterView >> keywords: anObject [
	keywords := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> lastName [
	^ lastName
]

{ #category : #accessing }
ERAdministrationRegisterView >> lastName: anObject [
	lastName := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> listOfDays [
	^ listOfDays
]

{ #category : #accessing }
ERAdministrationRegisterView >> listOfDays: anObject [
	listOfDays := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> listOfFoodPreference [
	^ listOfFoodPreference
	
]

{ #category : #accessing }
ERAdministrationRegisterView >> listOfFoodPreference: anObject [
	listOfFoodPreference := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> messageComponent [
	^ messageComponent
]

{ #category : #accessing }
ERAdministrationRegisterView >> messageComponent: anObject [
	messageComponent := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationAddress [
	^ organizationAddress
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationAddress: anObject [
	organizationAddress := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationCity [
	^ organizationCity
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationCity: anObject [
	organizationCity := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationName [
	^ organizationName
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationName: anObject [
	organizationName := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationPostal [
	^ organizationPostal
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationPostal: anObject [
	organizationPostal := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationProvince [
	^ organizationProvince
]

{ #category : #accessing }
ERAdministrationRegisterView >> organizationProvince: anObject [
	organizationProvince := anObject
]

{ #category : #rendering }
ERAdministrationRegisterView >> polo: html [
	html div class: 'form-group'; with: [ 
		html render: (ERTextSelectComponent id: 'sel1' label: 'Tshirt Size:' listOption: #('XS' 'S' 'M' 'L' 'XL' 'XXL' 'XXXL' 'XXXXL')).
		 ]
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerButton [
	^ registerButton
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerButton: anObject [
	registerButton := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerConfirmPassword [
	^ registerConfirmPassword
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerConfirmPassword: anObject [
	registerConfirmPassword := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerEmail [
	^ registerEmail
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerEmail: anObject [
	registerEmail := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerPassword [
	^ registerPassword
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerPassword: anObject [
	registerPassword := anObject
]

{ #category : #rendering }
ERAdministrationRegisterView >> renderContentOn: html [ 
	html div id: 'register'; class: 'container-fluid bg-grey'; with: [ 
		html div class: 'text-center'; with: [ 
			html heading level2; with:'Register' ].
		html div class: 'row slideanim'; with: [ 
			html div class: 'container'; with: [ 
				html div class: 'row'; with: [ 
					html section: [ 
						html div class: 'wizard'; with:[
							html div class: 'wizard-inner'; with: [ 
								html unorderedList class: 'nav nav-tabs';  attributeAt: 'role' put: 'tablist'; with: [ 
									self itemListRegister: html.
									self itemListPersonalInformation: html.
									self itemListConferenceOptions: html.
									self itemListAfiliationInformation: html.
									self itemListAditiaonalInformation: html.
									self itemListPaymentRegister: html.
									self itemListComplete: html.
								 ]].
							html render: self messageComponent.
							html form method: 'post'; id: 'formRegister'; name: 'formRegister'; attributeAt: 'role' put: 'form'; with: [ 
								html div class: 'tab-content'; with: [ 
									self formStep1: html.
									self formStep2: html.
									self formStep3: html.
									self formStep4: html.
									self formStep5: html. 
									self formStep6: html. 
								 	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'complete'; with: [ 
										html heading level3; with: 'Complete'.
										html paragraph: 'You have successfully completed all steps.' ].
									html div class: 'clearfix'.
									]	]]]]]]]
]

{ #category : #accessing }
ERAdministrationRegisterView >> step1 [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self firstName;
						add: self lastName;
						add: self registerEmail ;
						add: self registerPassword;
						add: self registerConfirmPassword;
						yourself))
]

{ #category : #accessing }
ERAdministrationRegisterView >> step2 [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self contactAddress ;
						add: self contactCity ;
						add: self contactProvince;
						add: self contactPostal;
						add: self contactFacebook ;
						add: self contactTwitter ;
						add: self contactHomePage;
						yourself))
]

{ #category : #accessing }
ERAdministrationRegisterView >> step4 [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self organizationName ;
						add: self organizationAddress;
						add: self organizationCity ;
						add: self organizationProvince ;
						add: self organizationPostal ;yourself ))
]
