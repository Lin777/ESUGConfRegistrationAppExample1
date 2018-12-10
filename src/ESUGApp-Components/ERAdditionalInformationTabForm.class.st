Class {
	#name : #ERAdditionalInformationTabForm,
	#superclass : #ERAttendeeRegistrationTabForm,
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERAdditionalInformationTabForm >> formId [
	^ 'additionalInfoForm'
]

{ #category : #rendering }
ERAdditionalInformationTabForm >> renderFormOn: html [
	html mdlTable
		shadow: 2;
		with: [ html
				tableBody: [ html
						tableRow: [ html mdlTableCell: [ html render: (self createTextField: 'Keywords ' for: #keywords:) ] ];
						tableRow: [ html mdlTableCell: [ html render: (self createTextAreaField: 'Additional text' for: #additionalText:) ] ].
						] ]
]

{ #category : #accessing }
ERAdditionalInformationTabForm >> tabName [
	^ 'Additional Information'
]
