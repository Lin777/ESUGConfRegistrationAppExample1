Class {
	#name : #ERContentPageComponent,
	#superclass : #WAComponent,
	#instVars : [
		'content'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERContentPageComponent >> content [
	^ content
]

{ #category : #accessing }
ERContentPageComponent >> content: anObject [
	content := anObject
]

{ #category : #rendering }
ERContentPageComponent >> renderContentOn: html [ 	
	html render: self content
]
