Class {
	#name : #ERNavBarItem,
	#superclass : #WAComponent,
	#instVars : [
		'label',
		'iconName',
		'callback'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERNavBarItem >> callback [
	^ callback
]

{ #category : #accessing }
ERNavBarItem >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERNavBarItem >> iconName [
	^ iconName
]

{ #category : #accessing }
ERNavBarItem >> iconName: anObject [
	iconName := anObject
]

{ #category : #accessing }
ERNavBarItem >> label [
	^ label
]

{ #category : #accessing }
ERNavBarItem >> label: anObject [
	label := anObject
]

{ #category : #rendering }
ERNavBarItem >> renderContentOn: html [
	html html: '<li class="nav-item">'.
	html anchor
		class: 'nav-link';
		callback: self callback;
		with: [ html icon
				class: 'material-icons';
				with: [html text: self iconName].
			html text: self label ].
	html html: '</li>'
]
