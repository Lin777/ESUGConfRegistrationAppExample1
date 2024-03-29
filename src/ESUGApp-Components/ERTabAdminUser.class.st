Class {
	#name : #ERTabAdminUser,
	#superclass : #ERTabContainerPage,
	#instVars : [
		'messageComponent'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERTabAdminUser >> acceptUser [
	attendee save.
]

{ #category : #rendering }
ERTabAdminUser >> cancel [
	Transcript show: 'Cancel'
]

{ #category : #initialization }
ERTabAdminUser >> initialize [
	super initialize.
	messageComponent := (ERComponentAlert warningAlert id: 'adminUserAlert').
]

{ #category : #rendering }
ERTabAdminUser >> renderButtons: html [
	html render: (self createButtonField: 'Accept' with: [ self acceptUser ] id: 'accept-user') forAcceptButton .
	
	html render: (self createButtonField: 'Cancel' with: [ self cancel ] id: 'cancel-user') forAcceptButton .
]

{ #category : #rendering }
ERTabAdminUser >> renderContainer: html [
	html horizontalRule .
	self renderFormOn: html
	
]

{ #category : #rendering }
ERTabAdminUser >> renderFields: html [
	html render: (self createTextField: 'First Name: ' for: #firstName withValue: attendee firstName).
	html render: (self createTextField: 'Last Name: ' for: #lastName withValue: attendee lastName).
	html render: (self createTextField: 'Email: ' for: #email withValue: attendee email).
]

{ #category : #rendering }
ERTabAdminUser >> renderFormOn: html [

html form
		method: 'post';
		id: 'groupManagerFunctions';
		with: [
			html render: messageComponent .
			self renderFields: html.
			self renderButtons: html.
			].
	
]

{ #category : #accessing }
ERTabAdminUser >> tabId [
	^ 'id'
]

{ #category : #accessing }
ERTabAdminUser >> tabName [
	^ 'User'
]

{ #category : #accessing }
ERTabAdminUser >> title [
	^ 'User'
]
