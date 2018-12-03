Class {
	#name : #ERMainView,
	#superclass : #WAComponent,
	#instVars : [
		'navigation',
		'content',
		'footer'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERMainView >> content [
	^ content
]

{ #category : #accessing }
ERMainView >> content: anObject [
	content := anObject
]

{ #category : #accessing }
ERMainView >> footer [
	^ footer
]

{ #category : #accessing }
ERMainView >> footer: anObject [
	footer := anObject
]

{ #category : #accessing }
ERMainView >> navigation [
	^ navigation
]

{ #category : #accessing }
ERMainView >> navigation: anObject [
	navigation := anObject
]

{ #category : #rendering }
ERMainView >> renderContentOn: html [
	html render: self navigation.
	html render: self content.
	html render: self footer.
]
