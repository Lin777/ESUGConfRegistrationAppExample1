Class {
	#name : #ERSubContentPageComponent,
	#superclass : #ERContentPageComponent,
	#instVars : [
		'options'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERSubContentPageComponent >> options [
	^ options
]

{ #category : #accessing }
ERSubContentPageComponent >> options: anObject [
	options := anObject
]

{ #category : #rendering }
ERSubContentPageComponent >> renderContentOn: html [
	html render: self options.
	html render: self content .
]
