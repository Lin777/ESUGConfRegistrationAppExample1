Class {
	#name : #ESUGAppTest,
	#superclass : #TestCase,
	#instVars : [
		'driver',
		'serverAdaptor'
	],
	#category : #'ESUGApp-Test'
}

{ #category : #accessing }
ESUGAppTest >> baseURL [
	^ 'http://localhost:8080/webcounter'
]

{ #category : #accessing }
ESUGAppTest >> setUp [
	serverAdaptor := (Smalltalk at: #ZnZincServerAdaptor) startOn: 8080.
	driver := BPRemoteWebDriver withCapabilities: BPDesiredCapabilities chrome.
	driver get: self baseURL 
]

{ #category : #accessing }
ESUGAppTest >> tearDown [
	driver quit.
	serverAdaptor stop.
]

{ #category : #accessing }
ESUGAppTest >> test1 [
	self assert: 'Hola mundo' = 'Hola mundo'
]
