Class {
	#name : #ERAdministrationLoggedInView,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERAdministrationLoggedInView >> renderContentOn: html [ 
	html heading level3; id: 'welcome'; with: 'Welcome to ESUG ', self session user email .
]
