Class {
	#name : #CssGoogleLatoLibrary,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library'
}

{ #category : #Updating }
CssGoogleLatoLibrary >> updateRoot: aRoot [

	aRoot stylesheet
		url: 'https://fonts.googleapis.com/css?family=Lato'.
		
]
