Class {
	#name : #ERHomeView,
	#superclass : #ERPageView,
	#category : #'ESUGApp-Views'
}

{ #category : #initialization }
ERHomeView >> initialize [ 
	super initialize.
	title := 'Welcome to ESUG'.
	icon := 'assignment'.
	id := 'register'
	
]

{ #category : #rendering }
ERHomeView >> renderPageOn: html [
	html html: 'Welcome'
]
