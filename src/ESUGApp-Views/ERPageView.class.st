Class {
	#name : #ERPageView,
	#superclass : #WAComponent,
	#instVars : [
		'pageController',
		'title',
		'icon'
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
ERPageView >> icon [
	^ icon
]

{ #category : #accessing }
ERPageView >> icon: anObject [
	icon := anObject
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
	html
		render:
			(ERContainerView
				title: self title
				icon: self icon
				content: [ self renderPageOn: html ]).
	html render: ERFooterView new
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
