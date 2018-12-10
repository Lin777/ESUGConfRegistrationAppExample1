Class {
	#name : #ERPageView,
	#superclass : #WAComponent,
	#instVars : [
		'pageController',
		'title'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #'options-generated' }
ERPageView class >> using: aPageController [
	|instance|
	instance := self new.
	instance controller: aPageController.
	^ instance.
	
]

{ #category : #accessing }
ERPageView >> controller [
	^ pageController
]

{ #category : #accessing }
ERPageView >> pageController [
	^ pageController
]

{ #category : #accessing }
ERPageView >> pageController: anObject [
	pageController := anObject
]

{ #category : #rendering }
ERPageView >> renderContentOn: html [
	html render: (ERAdministrationNavView new).
	self renderPageOn: html.
	html render: (ERAdministrationFooterView  new).
]

{ #category : #rendering }
ERPageView >> renderPageOn: html [
	self subclassResponsibility.
	
]

{ #category : #accessing }
ERPageView >> title [
	^ title
]

{ #category : #accessing }
ERPageView >> title: anObject [
	title := anObject
]
