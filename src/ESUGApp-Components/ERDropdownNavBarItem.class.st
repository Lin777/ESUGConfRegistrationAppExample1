Class {
	#name : #ERDropdownNavBarItem,
	#superclass : #WAComponent,
	#instVars : [
		'callback',
		'icon',
		'label',
		'listOptions'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERDropdownNavBarItem >> callback [
	^ callback
]

{ #category : #accessing }
ERDropdownNavBarItem >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERDropdownNavBarItem >> icon [
	^ icon
]

{ #category : #accessing }
ERDropdownNavBarItem >> icon: anObject [
	icon := anObject
]

{ #category : #accessing }
ERDropdownNavBarItem >> label [
	^ label
]

{ #category : #accessing }
ERDropdownNavBarItem >> label: anObject [
	label := anObject
]

{ #category : #accessing }
ERDropdownNavBarItem >> listOptions [
	^ listOptions
]

{ #category : #accessing }
ERDropdownNavBarItem >> listOptions: anObject [
	listOptions := anObject
]

{ #category : #rendering }
ERDropdownNavBarItem >> renderContentOn: html [
	html html: '<li class="dropdown nav-item">'.
	html anchor
		callback: self callback;
		class: 'dropdown-toggle nav-link';
		attributeAt: 'data-toggle' put: 'dropdown';
		with: [ html icon
				class: 'material-icons';
				with: [html text: self icon].
			html text: self label ].
	html div
		class: 'dropdown-menu dropdown-with-icons';
		with: [ self listOptions
				do: [ :each | 
					html anchor
						class: 'dropdown-item';
						callback: each callback;
						with: [ html icon
								class: 'material-icons';
								with: [html text: each icon].
							html text: each label ] ] ].
	html html: '</li>'
]
