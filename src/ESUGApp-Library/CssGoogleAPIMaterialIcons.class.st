Class {
	#name : #CssGoogleAPIMaterialIcons,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library-MaterialKit'
}

{ #category : #updating }
CssGoogleAPIMaterialIcons >> updateRoot: aRoot [

	aRoot stylesheet
		url: 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons'.
		
]
