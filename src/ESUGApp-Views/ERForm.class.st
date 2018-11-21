Class {
	#name : #ERForm,
	#superclass : #WAComponent,
	#instVars : [
		'list'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERForm >> list [
	^ list
]

{ #category : #accessing }
ERForm >> list: anObject [
	list := anObject
]

{ #category : #rendering }
ERForm >> renderContentOn: html [
	self list do: [ :each | html render: each ]
]
