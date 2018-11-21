Class {
	#name : #ERButtonRegisterSkip,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERButtonRegisterSkip >> renderContentOn: html [
	html button
		type: 'button';
		class: 'btn btn-primary next-step';
		with: 'Skip'
]
