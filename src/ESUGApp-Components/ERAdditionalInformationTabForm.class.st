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
	html render: (self createTextField: 'Keywords ' for: #keywords:).
	html render: (self createTextAreaField: 'Additional text' for: #additionalText:)
]

{ #category : #accessing }
ERAdditionalInformationTabForm >> tabName [
	^ 'Additional Information'
]
