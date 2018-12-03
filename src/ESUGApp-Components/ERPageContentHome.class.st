Class {
	#name : #ERPageContentHome,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERPageContentHome >> renderContentOn: html [
	html div class: 'container'; with: [ 
		html break . html break .html break .html break . 
		html heading level2; with: 'Welcome to the ESUG Registration System'.
		html heading level5; with: [ html paragraph with: 'Conference Home Page: '.
			html anchor with: 'http://exmple.exaomeosmdfsdkfm..xkmdkfm' ]
		 ]
]
