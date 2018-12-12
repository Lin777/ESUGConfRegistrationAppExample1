Class {
	#name : #ERPageLoggedView,
	#superclass : #WAComponent,
	#instVars : [
		'navbar',
		'content'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #converting }
ERPageLoggedView class >> asAdmin [
]

{ #category : #converting }
ERPageLoggedView class >> asAttendee [
]

{ #category : #converting }
ERPageLoggedView class >> asGroupManager [
	^ self new 
]

{ #category : #initialization }
ERPageLoggedView class >> canBeRoot [
	^ true
]

{ #category : #initialization }
ERPageLoggedView class >> initialize [
	"self initialize"

	(WAAdmin register: self asApplicationAt: 'Home')
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: ERMaterialBlueRedMinCss ;
		addLibrary: CssForLoginMDL;
		addLibrary: CssForRegisterFormsMDL;
		addLibrary: ERJQValidateForm ;
		addLibrary: ERLibrary ;
		preferenceAt: #sessionClass put: ERSession
]

{ #category : #accessing }
ERPageLoggedView >> content: anObject [
	content := anObject
]

{ #category : #rendering }
ERPageLoggedView >> initialize [
	super initialize .
	content := ERContainerHomeView new.
	navbar := (ERMenuFactory availableItemsOfMenu: self itemList) createMenuForGroupManager .
]

{ #category : #rendering }
ERPageLoggedView >> itemList [
	^ Dictionary new 
		at: 'home' put: [ self content: ERContainerHomeView new ];
		at: 'admin' put: [ self content: ERContainerHomeView new ];
		at: 'logout' put: [ self session logout. self answer: true ];
		at: 'groupRegistration' put: [ self content: ERContainerGroupRegistrationView new];
		at: 'myRegistration' put: [ self content: ERContainerHomeView new ];
		at: 'configuration' put: [ self content: ERContainerHomeView new ];
		yourself 
]

{ #category : #accessing }
ERPageLoggedView >> navbar: anObject [
	navbar := anObject
]

{ #category : #rendering }
ERPageLoggedView >> renderContentOn: html [
	html div class: 'demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header'; with: [ 
		html render: navbar .
		html render: content .
		 ]
]
