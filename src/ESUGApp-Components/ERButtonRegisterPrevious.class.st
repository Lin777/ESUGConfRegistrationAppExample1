Class {
	#name : #ERButtonRegisterPrevious,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERButtonRegisterPrevious >> renderContentOn: html [
	html button
		type: 'button';
		class: 'btn btn-primary prev-step';
		with: 'Previous'
]
