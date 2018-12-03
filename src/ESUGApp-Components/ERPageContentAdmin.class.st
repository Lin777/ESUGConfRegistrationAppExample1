Class {
	#name : #ERPageContentAdmin,
	#superclass : #WAComponent,
	#instVars : [
		'navbarComponent',
		'contentPage'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #accessing }
ERPageContentAdmin >> contentPage [
	^ contentPage
]

{ #category : #accessing }
ERPageContentAdmin >> contentPage: anObject [
	contentPage := anObject
]

{ #category : #accessing }
ERPageContentAdmin >> initialize [
	super initialize .
	contentPage := nil.
	self initializeNavbar 
]

{ #category : #accessing }
ERPageContentAdmin >> initializeNavbar [
	navbarComponent := ERNavBarComponentWithBootstrap new.
	navbarComponent optionList
		add:
			(ERNavBarItem new
				label: 'User';
				iconName: 'user';
				callback: [ self pageContent: ERPageContentHome new ]);
		add: (ERNavBarItem new
				label: 'Change Password';
				iconName: 'change';
				callback: [ self pageContent: nil ])
]

{ #category : #accessing }
ERPageContentAdmin >> navbarComponent [
	^ navbarComponent
]

{ #category : #accessing }
ERPageContentAdmin >> navbarComponent: anObject [
	navbarComponent := anObject
]

{ #category : #rendering }
ERPageContentAdmin >> renderContentOn: html [
	html break . html break . html break . html break .
	html render: self navbarComponent .
	html render: self contentPage .
]
