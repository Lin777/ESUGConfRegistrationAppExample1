Class {
	#name : #ERContactInformationTabForm,
	#superclass : #ERAttendeeRegistrationTabForm,
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERContactInformationTabForm >> formId [
	^ 'contactInfoForm'
]

{ #category : #rendering }
ERContactInformationTabForm >> renderFormOn: html [
	html mdlTable
		style: 'border: inset 0pt';
		shadow: 2;
		with: [ html
				tableBody: [ html
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Address1' for: #address:) ].
							html
								mdlTableCell: [ html render: (self createTextField: 'Address2' for: #address2:) ];
								tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'City' for: #city:) ].
									html mdlTableCell: [ html render: (self createSelectField: 'Country' for: #country: list: ERAttendee countries) ] ];
								tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Province/State' for: #province:) ].
									html mdlTableCell: [ html render: (self createTextField: 'Postal/Zipcode' for: #postal:) ] ];
								tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Facebook URL' for: #facebookURL:) ].
									html mdlTableCell: [ html render: (self createTextField: 'Twitter URL' for: #twitterURL:) ] ];
								tableRow: [ (html mdlTableCell colSpan: 2; with: [ html render: (self createTextField: 'Home Page URL' for: #homePage:) ])  ] ] ] ]
]

{ #category : #accessing }
ERContactInformationTabForm >> tabName [
	^ 'Personal Information'
]
