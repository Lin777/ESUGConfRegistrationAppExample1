Class {
	#name : #ERAdministrationRegisterView,
	#superclass : #WAComponent,
	#instVars : [
		'userInformation',
		'userContactInformation',
		'conferenceOptions',
		'affiliationInformation',
		'additionalInformation',
		'currency',
		'messageComponent',
		'paymentType',
		'registerButton'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERAdministrationRegisterView >> additionalInformation [
	^ additionalInformation
]

{ #category : #accessing }
ERAdministrationRegisterView >> additionalInformation: anObject [
	additionalInformation := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> affiliationInformation [
	^ affiliationInformation
]

{ #category : #accessing }
ERAdministrationRegisterView >> affiliationInformation: anObject [
	affiliationInformation := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> checkboxFood [
	^ (ERForm new
				list: self conferenceOptions listOfFoodPreference )
]

{ #category : #accessing }
ERAdministrationRegisterView >> conferenceOptions [
	^ conferenceOptions
]

{ #category : #accessing }
ERAdministrationRegisterView >> conferenceOptions: anObject [
	conferenceOptions := anObject
]

{ #category : #rendering }
ERAdministrationRegisterView >> currency [
	^ currency 
]

{ #category : #rendering }
ERAdministrationRegisterView >> currency: anObject [
	currency := anObject 
]

{ #category : #accessing }
ERAdministrationRegisterView >> daysAssist [
	^ (ERForm new
				list: self conferenceOptions listOfDays )
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
			html render: self additionalInformation keywords.
			html render: self additionalInformation additionalText.
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
			html render: self paymentType.
			html
				render:
					(ERTextInputComponent new
						id: 'reductionTicket';
						name: 'reductionTicket';
						type: 'text';
						callback: [ :value | Transcript show: value asString ];
						label: 'Reduction ticket code').
				html render: self currency.
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
		self conferenceOptions listGender do: [:each | 
			html render: each
			 ]]
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
ERAdministrationRegisterView >> messageComponent [
	^ messageComponent
]

{ #category : #accessing }
ERAdministrationRegisterView >> messageComponent: anObject [
	messageComponent := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> paymentType [
	^ paymentType
]

{ #category : #accessing }
ERAdministrationRegisterView >> paymentType: anObject [
	paymentType :=anObject
]

{ #category : #rendering }
ERAdministrationRegisterView >> polo: html [
	html div class: 'form-group'; with: [ 
		html render: self conferenceOptions tShirtSize ]
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerButton [
	^ registerButton
]

{ #category : #accessing }
ERAdministrationRegisterView >> registerButton: anObject [
	registerButton := anObject
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
									self renderItems: html.
								 ]].
							html render: self messageComponent.
							html form method: 'post'; id: 'formRegister'; name: 'formRegister'; attributeAt: 'role' put: 'form'; with: [ 
								html div class: 'tab-content'; with: [ 
									self renderForms: html. 
								 	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'complete'; with: [ 
										html heading level3; with: 'Complete'.
										html paragraph: 'You have successfully completed all steps.' ].
									html div class: 'clearfix'.
									]	]]]]]]]
]

{ #category : #rendering }
ERAdministrationRegisterView >> renderForms: html [
	self formStep1: html.
	self formStep2: html.
	self formStep3: html.
	self formStep4: html.
	self formStep5: html. 
	self formStep6: html.
]

{ #category : #rendering }
ERAdministrationRegisterView >> renderItems: html [
	self itemListRegister: html.
	self itemListPersonalInformation: html.
	self itemListConferenceOptions: html.
	self itemListAfiliationInformation: html.
	self itemListAditiaonalInformation: html.
	self itemListPaymentRegister: html.
	self itemListComplete: html.
]

{ #category : #accessing }
ERAdministrationRegisterView >> step1 [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self userInformation firstName;
						add: self userInformation lastName;
						add: self userInformation registerEmail ;
						add: self userInformation registerPassword;
						add: self userInformation registerConfirmPassword;
						yourself))
]

{ #category : #accessing }
ERAdministrationRegisterView >> step2 [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self userContactInformation contactAddress ;
						add: self userContactInformation contactCity ;
						add: self userContactInformation contactProvince;
						add: self userContactInformation contactPostal;
						add: self userContactInformation contactFacebook ;
						add: self userContactInformation contactTwitter ;
						add: self userContactInformation contactHomePage;
						yourself))
]

{ #category : #accessing }
ERAdministrationRegisterView >> step4 [
	^ (ERForm new
				list:
					(OrderedCollection new
						add: self affiliationInformation organizationName ;
						add: self affiliationInformation organizationAddress;
						add: self affiliationInformation organizationCity ;
						add: self affiliationInformation organizationProvince ;
						add: self affiliationInformation organizationPostal ;yourself ))
]

{ #category : #accessing }
ERAdministrationRegisterView >> userContactInformation [
	^ userContactInformation
]

{ #category : #accessing }
ERAdministrationRegisterView >> userContactInformation: anObject [
	userContactInformation := anObject
]

{ #category : #accessing }
ERAdministrationRegisterView >> userInformation [
	^ userInformation
]

{ #category : #accessing }
ERAdministrationRegisterView >> userInformation: anObject [
	userInformation := anObject
]
