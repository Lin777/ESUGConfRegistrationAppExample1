Class {
	#name : #ERNavBarComponentWithBootstrap,
	#superclass : #ERNavBarComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERNavBarComponentWithBootstrap >> renderContentOn: html [ 
	html navigation
		class: 'navbar navbar-default navbar-fixed-top';
		with: [ html div
				class: 'container';
				with: [ html div
						class: 'navbar-header';
						with: [ html button type: 'button'; class: 'navbar-toggle'; attributeAt: 'data-toggle' put: 'collapse'; attributeAt: 'data-target' put: '#myNavbar'; with: [ 
								html span class: 'icon-bar'.
								html span class: 'icon-bar'.
								html span class: 'icon-bar'. ].
							html image url: 'https://esug.github.io/images/esug-logo-small.jpg'; width: '120px'; height: '50px' ].
						html div class: 'collapse navbar-collapse'; id: 'myNavbar'; with: [ 
							html break .
							html unorderedList class: 'nav navbar-nav navbar-right'; with: [ 
								self optionList do: [ :each | html render: each ].
 ] ] ]].
]
