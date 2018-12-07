Class {
	#name : #ERBasicInformationTabForm,
	#superclass : #ERAttendeeRegistrationTabForm,
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERBasicInformationTabForm >> formId [
	^ 'basicInfoForm'
]

{ #category : #accessing }
ERBasicInformationTabForm >> renderFormOn: html [
	html mdlTable
		shadow: 2;
		with: [ html
				tableBody: [ html
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'First Name' for: #firstName:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Last Name' for: #lastName:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Email' for: #email:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createPasswordField: 'Password' for: #password:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createPasswordField: 'Confirm Password') ] ] ].
			"html mdlButton
				id: 'next-step';
				with: 'Next'" ]
]

{ #category : #accessing }
ERBasicInformationTabForm >> tabName [
	^ 'Registration'
]
