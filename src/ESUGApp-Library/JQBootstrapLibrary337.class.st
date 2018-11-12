Class {
	#name : #JQBootstrapLibrary337,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library'
}

{ #category : #updating }
JQBootstrapLibrary337 >> updateRoot: anHtmlRoot [
	"super updateRoot: anHtmlRoot."
	anHtmlRoot javascript
		url: 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'
]
