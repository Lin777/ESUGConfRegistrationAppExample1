Class {
	#name : #CssGoogleMonserratLibrary,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library'
}

{ #category : #Updating }
CssGoogleMonserratLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url: 'https://fonts.googleapis.com/css?family=Montserrat'.
		
]
