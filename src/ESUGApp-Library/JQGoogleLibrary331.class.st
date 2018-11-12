Class {
	#name : #JQGoogleLibrary331,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library'
}

{ #category : #updating }
JQGoogleLibrary331 >> updateRoot: anHtmlRoot [
	"super updateRoot: anHtmlRoot."
	anHtmlRoot javascript
		url: 'https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js'
]
