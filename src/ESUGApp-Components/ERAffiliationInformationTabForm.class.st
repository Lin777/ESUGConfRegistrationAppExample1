Class {
	#name : #ERAffiliationInformationTabForm,
	#superclass : #ERAttendeeRegistrationTabForm,
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERAffiliationInformationTabForm >> formId [
	^ 'affiliationInfoForm'
]

{ #category : #rendering }
ERAffiliationInformationTabForm >> renderFormOn: html [
	html mdlTable
		shadow: 2;
		with: [ html
				tableBody: [ html
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Organization Name:' for: #orgName:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Address1' for: #orgAddrees1:) ].
										html mdlTableCell: [ html render: (self createTextField: 'Address2' for: #orgAddrees2:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'City' for: #orgCity:) ].
										html mdlTableCell: [ html render: (self createSelectField: 'Country' for: #orgCountry: list: ERAttendee countries) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Province/State' for: #orgProvince:) ].
										html mdlTableCell: [ html render: (self createTextField: 'Postal/Zipcode' for: #orgPostal:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createSelectField: 'Membership Type' for: #membershipType: list: ERAttendee membershipTypes) ] ] ] ]
]

{ #category : #accessing }
ERAffiliationInformationTabForm >> tabName [
	^ 'Affiliation Information'
]
