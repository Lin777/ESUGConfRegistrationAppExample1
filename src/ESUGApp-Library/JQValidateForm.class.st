Class {
	#name : #JQValidateForm,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library'
}

{ #category : #updating }
JQValidateForm >> updateRoot: anHtmlRoot [
	"super updateRoot: anHtmlRoot."
	anHtmlRoot javascript
		url: 'https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js'
]
