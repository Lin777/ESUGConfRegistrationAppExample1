Class {
	#name : #ERHome,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERHome >> renderContentOn: html [ 
	html heading level3; with: 'Welcome to Home'
]
