Class {
	#name : #ERPageContentGeneral,
	#superclass : #WAComponent,
	#instVars : [
		'content'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERPageContentGeneral >> content [
	^ content
]

{ #category : #accessing }
ERPageContentGeneral >> content: anObject [
	content := anObject
]

{ #category : #rendering }
ERPageContentGeneral >> renderContentOn: html [ 
	html render: self content 
]
