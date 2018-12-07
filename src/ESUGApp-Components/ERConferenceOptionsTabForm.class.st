Class {
	#name : #ERConferenceOptionsTabForm,
	#superclass : #ERAttendeeRegistrationTabForm,
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERConferenceOptionsTabForm >> formId [
	^ 'conferenceOptionsForm'
]

{ #category : #rendering }
ERConferenceOptionsTabForm >> renderFormOn: html [
	html mdlTable
		style: 'border: inset 0pt';
		shadow: 2;
		with: [ html
				tableBody: [ html
						tableRow: [ 
							html mdlTableCell: [ html render: (self createCheckboxField: 'Monday (dd/mm/aa)' for: #monday: ) ]];
						tableRow: [ 	html mdlTableCell: [ html render: (self createCheckboxField: 'Tuesday (dd/mm/aa)' for: #tuesday: ) ]];
						tableRow: [ 	html mdlTableCell: [ html render: (self createCheckboxField: 'Wednesday (dd/mm/aa)' for: #wednesday: ) ]];
						tableRow: [ 	html mdlTableCell: [ html render: (self createCheckboxField: 'Thursday (dd/mm/aa)' for: #thursday: ) ]];
						tableRow: [ 	html mdlTableCell: [ html render: (self createCheckboxField: 'Friday (dd/mm/aa)' for: #friday: ) ].];
								tableRow: [ html mdlTableCell: [ html render:( self createRadioField: 'Gender' for: #gender: list: ERAttendee genders listValues: #(true false) )]];
								tableRow: [ html mdlTableCell: [ html render: (self createSelectField: 'Tshirt Size' for: #tshirtSize: list: ERAttendee tShirtSizes ) ] ];
								tableRow: [ html mdlTableCell: [ html render: (self createRadioField: 'Food: ' for: #foodPreference: list: ERAttendee foodPreferences listValues: #(false false true) ) ] ];
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createCheckboxField: 'Check if you will you go to the social Event' for: #attendSocialEvent:) ])  ];
								 tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createCheckboxField: 'Check if you want to be added to the Mailling List' for: #addedToMainList:) ])  ]] ]
]

{ #category : #accessing }
ERConferenceOptionsTabForm >> tabName [
	^ 'Conference Options'
]
