Class {
	#name : #ERAdministrationLoggedInView,
	#superclass : #WAComponent,
	#instVars : [
		'navBarComponent',
		'pageContent',
		'footer'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERAdministrationLoggedInView >> children [
 
 ^ Array with: navBarComponent  ; with: pageContent ; with: footer 
]

{ #category : #accessing }
ERAdministrationLoggedInView >> footer [
	^ footer
]

{ #category : #accessing }
ERAdministrationLoggedInView >> footer: anObject [
	footer := anObject
]

{ #category : #accessing }
ERAdministrationLoggedInView >> getItemByRole [
	self isAttendee ifTrue: [ 
		^ ERNavBarItem new
				label: 'MY REGISTRATION';
				iconName: 'registration';
				callback: [ self pageContent: nil ]].
			
	self isAdmin ifTrue: [ 
		^ ERNavBarItem new
				label: 'CONFIGURATION';
				iconName: 'configuration';
				callback: [ self pageContent: nil ]].
			
	self isGroupManager ifTrue: [ 
		^ ERNavBarItem new
				label: 'GROUP REGISTRATION';
				iconName: 'groupRegistration';
				callback: [ self pageContent: ERPageContentGroupRegistration new ] ].
]

{ #category : #accessing }
ERAdministrationLoggedInView >> initialize [
	super initialize .
	self initializeNavBarComponent.
	self pageContent: ERPageContentHome new.
	self footer: ERAdministrationFooterView new.
	
]

{ #category : #accessing }
ERAdministrationLoggedInView >> initializeNavBarComponent [
	| itemNavbar |
	itemNavbar := self getItemByRole.
	navBarComponent := ERNavBarComponentWithBootstrap new.
	navBarComponent optionList
		add:
			(ERNavBarItem new
				label: 'HOME';
				iconName: 'home';
				callback: [ self pageContent: ERPageContentHome new ]);
		add: (itemNavbar );
		add: (ERNavBarItem new
				label: 'ADMIN';
				iconName: 'admin';
				callback: [ self pageContent: ERPageContentAdmin new ]);
		add: (ERNavBarItem new
				label: 'LOGOUT';
				iconName: 'Logout';
				callback: [ self session logout. self answer: true ]).
	
		
]

{ #category : #rendering }
ERAdministrationLoggedInView >> isAdmin [
	^ self session user role = 'admin'
]

{ #category : #rendering }
ERAdministrationLoggedInView >> isAttendee [
	^ self session user role = 'attendee'
]

{ #category : #rendering }
ERAdministrationLoggedInView >> isGroupManager [
	^ self session user role = 'groupManager'
]

{ #category : #accessing }
ERAdministrationLoggedInView >> navBarComponent [
	^ navBarComponent 
]

{ #category : #accessing }
ERAdministrationLoggedInView >> navBarComponent: anObject [
	navBarComponent := anObject
]

{ #category : #accessing }
ERAdministrationLoggedInView >> pageContent [
	^ pageContent
]

{ #category : #accessing }
ERAdministrationLoggedInView >> pageContent: anObject [
	pageContent := anObject
]

{ #category : #rendering }
ERAdministrationLoggedInView >> renderContentOn: html [
	html render: self navBarComponent .
	html render: self pageContent .
	html render: self footer.
]
