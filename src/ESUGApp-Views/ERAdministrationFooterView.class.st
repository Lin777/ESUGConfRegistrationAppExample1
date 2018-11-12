Class {
	#name : #ERAdministrationFooterView,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERAdministrationFooterView >> renderContentOn: html [
	html footer class: 'container-fluid text-center'; with: [ 
		html anchor url: '#myPage'; attributeAt: 'title' put: 'To Top'; with:[
			 html span class: 'glyphicon glyphicon-chevron-up'].
		html paragraph: [html text:'© Semantics 2018. All rights reserved.'.
		html anchor url: 'http://semantics.bo/'; attributeAt: 'title' put: 'Visit w3schools'; with: 'semantics.bo'
		]]
]
