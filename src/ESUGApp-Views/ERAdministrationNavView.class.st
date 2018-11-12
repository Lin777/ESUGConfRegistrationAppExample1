Class {
	#name : #ERAdministrationNavView,
	#superclass : #WAComponent,
	#instVars : [
		'optionList'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERAdministrationNavView >> renderContentOn: html [
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
								html listItem: [ html anchor url: '#login'; with: [ html text: 'Login' ] ].
								html listItem: [ html anchor url: '#register'; with: [ html text: 'Register' ] ].
								html listItem: [ html anchor url: '#portafolio'; with: [ html text: 'Register as Group Manager' ] ].
								html listItem: [ html anchor url: '#pricing'; with: [ html text: 'I forgot my password' ] ]. ] ] ]].
				html script with: '$(document).ready(function(){

      var height = $(window).height();

      $(''#login'').height(height);
      // $("#register").height(height);
});'
]
