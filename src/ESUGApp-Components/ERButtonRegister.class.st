Class {
	#name : #ERButtonRegister,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERButtonRegister >> callback [
	^ callback
]

{ #category : #accessing }
ERButtonRegister >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERButtonRegister >> id [
	^ id
]

{ #category : #accessing }
ERButtonRegister >> id: anObject [
	id := anObject
]

{ #category : #rendering }
ERButtonRegister >> renderContentOn: html [
	html button
		id: self id;
		name: self id;
		type: 'submit';
		class: 'btn btn-primary next-step';
		callback: self callback;
		with: 'Save and continue'
]
