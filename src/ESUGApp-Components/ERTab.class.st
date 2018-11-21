Class {
	#name : #ERTab,
	#superclass : #WAComponent,
	#instVars : [
		'class',
		'url',
		'title',
		'icon'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERTab class >> class: aClass url: aUrl title: aTitle icon: aIcon [
	^ self new
		class: aClass;
		url: aUrl;
		title: aTitle;
		icon: aIcon;
		yourself
]

{ #category : #accessing }
ERTab >> class1 [
	^ class
]

{ #category : #accessing }
ERTab >> class: anObject [
	class := anObject
]

{ #category : #accessing }
ERTab >> icon [
	^ icon
]

{ #category : #accessing }
ERTab >> icon: anObject [
	icon := anObject
]

{ #category : #rendering }
ERTab >> renderContentOn: html [
	html listItem attributeAt: 'role' put: 'presentation'; class: self class1; with: [  
		html anchor url: '#', self url ;  attributeAt: 'data-toggle' put: 'tab';  attributeAt: 'aria-controls' put: self url; attributeAt: 'role' put: 'tab'; attributeAt: 'title' put: self title ; with: [ 
			html span class: 'round-tab'; with: [ 
				html icon class: self icon ] ]].
]

{ #category : #accessing }
ERTab >> title [
	^ title
]

{ #category : #accessing }
ERTab >> title: anObject [
	title := anObject
]

{ #category : #accessing }
ERTab >> url [
	^ url
]

{ #category : #accessing }
ERTab >> url: anObject [
	url := anObject
]
