Class {
	#name : #ERLoginView,
	#superclass : #ERPageView,
	#instVars : [
		'tabs'
	],
	#category : #'ESUGApp-Views'
}

{ #category : #testing }
ERLoginView class >> canBeRoot [ 
    ^ true
]

{ #category : #initialization }
ERLoginView class >> initialize [
	"self initialize"

	(WAAdmin register: self asApplicationAt: 'Login')
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		addLibrary: CssForLoginMDL;
		addLibrary: CssForRegisterFormsMDL;
		preferenceAt: #sessionClass put: ERSession
]

{ #category : #rendering }
ERLoginView >> initialize [
	super initialize .
	title := 'User Login'.
	icon := 'person'.
	pageController := ERERLoginController new
]

{ #category : #rendering }
ERLoginView >> renderPageOn: html [
	html render: (ERTextFieldLabel label: 'Email' callback: [ :value | self controller user email: value asString ]).
	html render: ((ERTextFieldLabel label: 'Password' callback: [ :value | self controller user email: value asString ] )textType: 'password').
	html render: ((ERButtonLabel label: 'Login' callback: [ self controller validateLogin ]) class: ' mdl-button--colored mdl-color-text--white' ).
]
