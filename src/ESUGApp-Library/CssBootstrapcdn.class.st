Class {
	#name : #CssBootstrapcdn,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library-MaterialKit'
}

{ #category : #updating }
CssBootstrapcdn >> updateRoot: aRoot [

	aRoot stylesheet
		url: 'https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css'.
		
]
