Class {
	#name : #ERTabContainerPage,
	#superclass : #ERTab,
	#instVars : [
		'pageController'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'initialize-release' }
ERTabContainerPage class >> controller: aController [
	| form |
	form := self new.
	form pageController: aController.
	^ form
]

{ #category : #accessing }
ERTabContainerPage >> attendee [
	pageController attendee 
]

{ #category : #accessing }
ERTabContainerPage >> pageController: anObject [
	pageController := anObject
]

{ #category : #rendering }
ERTabContainerPage >> renderContainer: html [
	self subclassResponsibility 
]

{ #category : #rendering }
ERTabContainerPage >> renderContentOn: html [
	html heading level3; with: self title .
	self renderContainer: html
]

{ #category : #accessing }
ERTabContainerPage >> title [
	self subclassResponsibility 
]

{ #category : #accessing }
ERTabContainerPage >> user [
	pageController attendee userAccount 
]
