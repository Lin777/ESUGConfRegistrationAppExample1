Class {
	#name : #ERButtonRegisterNextStep,
	#superclass : #WAComponent,
	#instVars : [
		'id',
		'label'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERButtonRegisterNextStep >> id [
	^ id
]

{ #category : #accessing }
ERButtonRegisterNextStep >> id: anObject [
	id := anObject
]

{ #category : #initialization }
ERButtonRegisterNextStep >> initialize [
	super initialize.
	label := 'Save and continue'
]

{ #category : #accessing }
ERButtonRegisterNextStep >> label [
	^ label
]

{ #category : #accessing }
ERButtonRegisterNextStep >> label: anObject [
	label := anObject
]

{ #category : #rendering }
ERButtonRegisterNextStep >> renderContentOn: html [
	html button
		id: self id ;
		name: self id;
		type: 'button';
		class: 'btn btn-primary next-step';
		with: self label 
]
