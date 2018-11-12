Class {
	#name : #ERAdministrationRegisterView,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERAdministrationRegisterView >> food: html [
	html div class: 'form-group'; with: [ 
		html label: 'Food: '.
		html div class: 'form-check form-check-inline'; with: [ 
			"(WAHtmlCanvas brush: WAFormInputTag new) class: 'form-check-input'; type: 'checkbox'; attributeAt: 'value' put: 'option1'."
			html label class: 'form-check-label'; with: 'Vegetarian'
			 ].
		html div class: 'form-check form-check-inline'; with: [ 
			"(WAHtmlCanvas brush: WAFormInputTag new) class: 'form-check-input'; type: 'checkbox'; attributeAt: 'value' put: 'option1'."
			html label class: 'form-check-label'; with: 'Vegan'
			 ].
		 ]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formGroup: html label: aLabel type: aType [
	html div class: 'form-group'; with: [ 
				html label: aLabel,':' .
					html textInput type: aType ; class: 'form-control'; name: 'username'; attributeAt: 'placeholder' put: aLabel; attributeAt: 'required' put: ''; attributeAt: 'autofocus' put: '' ].
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep1: html [
	html div class: 'tab-pane active'; attributeAt: 'role' put: 'tabpanel'; id: 'step1'; with: [
		html break .
		self formGroup: html label: 'First Name' type: 'text'.
		self formGroup: html label: 'Last Name' type: 'text'.
		self formGroup: html label: 'Email' type: 'text'.
		self formGroup: html label: 'Password' type: 'password'.
		self formGroup: html label: 'Confirm password' type: 'password'.
		html unorderedList class: 'list-inline pull-right'; with: [ 
			html listItem: [ 
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Save and continue' ] ]
			]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep2: html [
	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'step2'; with: [
		html break .
		self formGroup: html label: 'Address' type: 'text'.
		self formGroup: html label: 'City' type: 'text'.
		self formGroup: html label: 'Province/State' type: 'text'.
		self formGroup: html label: 'Postal/ZipCode' type: 'text'.
		self formGroup: html label: 'Facebook (URL)' type: 'text'.
		self formGroup: html label: 'Twitter (URL)' type: 'text'.
		self formGroup: html label: 'Home Page (URL)' type: 'text'.
		html unorderedList class: 'list-inline pull-right'; with: [ 
			html listItem: [ 
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Previous'].
			html listItem: [
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Save and continue' ]]]
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
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Previous'].
			html listItem: [
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Save and continue' ]]]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep4: html [
	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'step4'; with: [
		html break .
		self formGroup: html label: 'Organization Name' type: 'text'.
		self formGroup: html label: 'Address' type: 'text'.
		self formGroup: html label: 'City' type: 'text'.
		self formGroup: html label: 'Province/State' type: 'text'.
		self formGroup: html label: 'Postal/ZipCode' type: 'text'.
		html unorderedList class: 'list-inline pull-right'; with: [ 
			html listItem: [ 
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Previous'].
			html listItem: [
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Save and continue' ]]]
]

{ #category : #rendering }
ERAdministrationRegisterView >> formStep5: html [
	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'step5'; with: [
		html break .
		html unorderedList class: 'list-inline pull-right'; with: [ 
			html listItem: [ 
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Previous'].
			html listItem: [ 
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Skip'].
			html listItem: [ 
				html button type: 'button'; class: 'btn btn-primary next-step'; with: 'Save and continue' ]]]
]

{ #category : #rendering }
ERAdministrationRegisterView >> gender: html [
	html label: 'Gender:'.
	html div class: 'form-group'; with: [ 
		html label class: 'radio-inline'; with:[
			"(WAHtmlCanvas brush: WAFormInputTag new) type: 'radio'; name: 'optRadio'; with: 'Female'	"]. 
		html label class: 'radio-inline'; with:[
			"(WAHtmlCanvas brush: WAFormInputTag new) type: 'radio'; name: 'optRadio'; with: 'Male'"	].]
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemDays: html [
	html label: 'Days: '.
	html div class: 'form-group'; with: [ 
		html div class: 'form-check form-check-inline'; with: [ 
			html textInput class: 'form-check-input'; type: 'checkbox'; attributeAt: 'value' put: 'option1'.
			html label class: 'form-check-label'; with:'Monday (dd/mm/aa)'].
		html div class: 'form-check form-check-inline'; with: [ 
			html textInput class: 'form-check-input'; type: 'checkbox'; attributeAt: 'value' put: 'option2'.
			html label class: 'form-check-label'; with:'Tuesday (dd/mm/aa)'].
		html div class: 'form-check form-check-inline'; with: [ 
			html textInput class: 'form-check-input'; type: 'checkbox'; attributeAt: 'value' put: 'option3'.
			html label class: 'form-check-label'; with:'Wednesday (dd/mm/aa)'].
		html div class: 'form-check form-check-inline'; with: [ 
			html textInput class: 'form-check-input'; type: 'checkbox'; attributeAt: 'value' put: 'option4'.
			html label class: 'form-check-label'; with:'Thursday (dd/mm/aa)'].
		html div class: 'form-check form-check-inline'; with: [ 
			html textInput class: 'form-check-input'; type: 'checkbox'; attributeAt: 'value' put: 'option5'.
			html label class: 'form-check-label'; with:'Friday (dd/mm/aa)'].
		
		 ]
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListAditiaonalInformation: html [
	html listItem attributeAt: 'role' put: 'presentation'; class: 'disabled'; with: [  
		html anchor url: '#step5';  attributeAt: 'data-toggle' put: 'tab';  attributeAt: 'aria-controls' put: 'step5'; attributeAt: 'role' put: 'tab'; attributeAt: 'title' put: 'Aditional information'; with: [ 
			html span class: 'round-tab'; with: [ 
				html icon class: 'glyphicon glyphicon-plus' ] ]].
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListAfiliationInformation: html [
	html listItem attributeAt: 'role' put: 'presentation'; class: 'disabled'; with: [  
		html anchor url: '#step4';  attributeAt: 'data-toggle' put: 'tab';  attributeAt: 'aria-controls' put: 'step4'; attributeAt: 'role' put: 'tab'; attributeAt: 'title' put: 'Afiliation information'; with: [ 
			html span class: 'round-tab'; with: [ 
				html icon class: 'glyphicon glyphicon-briefcase' ] ]].
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListComplete: html [
	html listItem attributeAt: 'role' put: 'presentation'; class: 'disabled'; with: [  
		html anchor url: '#complete';  attributeAt: 'data-toggle' put: 'tab';  attributeAt: 'aria-controls' put: 'complete'; attributeAt: 'role' put: 'tab'; attributeAt: 'title' put: 'Complete'; with: [ 
			html span class: 'round-tab'; with: [ 
				html icon class: 'glyphicon glyphicon-ok' ] ]].
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListConferenceOptions: html [
	html listItem attributeAt: 'role' put: 'presentation'; class: 'disabled'; with: [  
		html anchor url: '#step3';  attributeAt: 'data-toggle' put: 'tab';  attributeAt: 'aria-controls' put: 'step3'; attributeAt: 'role' put: 'tab'; attributeAt: 'title' put: 'Conference Options'; with: [ 
			html span class: 'round-tab'; with: [ 
				html icon class: 'glyphicon glyphicon-copy' ] ]].
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListPersonalInformation: html [
	html listItem attributeAt: 'role' put: 'presentation'; class: 'disabled'; with: [  
		html anchor url: '#step2';  attributeAt: 'data-toggle' put: 'tab';  attributeAt: 'aria-controls' put: 'step2'; attributeAt: 'role' put: 'tab'; attributeAt: 'title' put: 'Personal Information '; with: [ 
			html span class: 'round-tab'; with: [ 
				html icon class: 'glyphicon glyphicon-home' ] ]].
]

{ #category : #rendering }
ERAdministrationRegisterView >> itemListRegister: html [
	html listItem attributeAt: 'role' put: 'presentation'; class: 'active'; with: [  
		html anchor url: '#step1';  attributeAt: 'data-toggle' put: 'tab';  attributeAt: 'aria-controls' put: 'step1'; attributeAt: 'role' put: 'tab'; attributeAt: 'title' put: 'Registration '; with: [ 
			html span class: 'round-tab'; with: [ 
				html icon class: 'glyphicon glyphicon-home' ] ]].
]

{ #category : #rendering }
ERAdministrationRegisterView >> polo: html [
	html div class: 'form-group'; with: [ 
		html div class: 'form-group'; with: [ 
			html label attributeAt: 'for' put: 'sel1'; with: 'Tshirt Size:'.
			html select class: 'form-control'; id: 'sel1'; with: [ 
				html option: 'XS'.
				html option: 'S'.
				html option: 'M'.
				html option: 'L'.
				html option: 'XL'.
				html option: 'XXL'.
				html option: 'XXXL'.
				html option: 'XXXXL'.
				
				 ] ] ]
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
									self itemListComplete: html.
"Repetir 6 mas"
								 ]].
							html form attributeAt: 'role' put: 'form'; with: [ 
								html div class: 'tab-content'; with: [ 
									self formStep1: html.
									self formStep2: html.
									self formStep3: html.
									self formStep4: html.
									self formStep5: html. 
								 	html div class: 'tab-pane'; attributeAt: 'role' put: 'tabpanel'; id: 'complete'; with: [ 
										html heading level3; with: 'Complete'.
										html paragraph: 'You have successfully completed all steps.' ].
									html div class: 'clearfix'.
									]	]]]]]]]
]
