Class {
	#name : #ERERLoginController,
	#superclass : #Object,
	#instVars : [
		'user'
	],
	#category : #'ESUGApp-Controllers'
}

{ #category : #initialization }
ERERLoginController >> initialize [
	super initialize.
	user := ERAttendee new.
]

{ #category : #accessing }
ERERLoginController >> user [
	^ user
]

{ #category : #rendering }
ERERLoginController >> validateLogin [
	| aUser |
	aUser := self session database
		validateUserLogin: self user.
	^ aUser
]
