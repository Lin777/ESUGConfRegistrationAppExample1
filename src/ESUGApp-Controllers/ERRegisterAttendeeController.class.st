Class {
	#name : #ERRegisterAttendeeController,
	#superclass : #WAObject,
	#instVars : [
		'aUser',
		'anAccount',
		'invoice',
		'daysAssist',
		'affiliationInfo'
	],
	#category : #'ESUGApp-Controllers'
}

{ #category : #accessing }
ERRegisterAttendeeController >> aUser [
	^ aUser
]

{ #category : #accessing }
ERRegisterAttendeeController >> aUser: anObject [
	aUser := anObject
]

{ #category : #accessing }
ERRegisterAttendeeController >> affiliationInfo [
	^ affiliationInfo
]

{ #category : #accessing }
ERRegisterAttendeeController >> affiliationInfo: anObject [
	affiliationInfo := anObject
]

{ #category : #accessing }
ERRegisterAttendeeController >> anAccount [
	^ anAccount
]

{ #category : #accessing }
ERRegisterAttendeeController >> anAccount: anObject [
	anAccount := anObject
]

{ #category : #accessing }
ERRegisterAttendeeController >> daysAssist [
	^ daysAssist
]

{ #category : #accessing }
ERRegisterAttendeeController >> daysAssist: anObject [
	daysAssist := anObject
]

{ #category : #initialization }
ERRegisterAttendeeController >> initialize [
	super initialize.
	affiliationInfo := ERAfiliation new.
	invoice := ERInvoice new.
]

{ #category : #accessing }
ERRegisterAttendeeController >> invoice [
	^ invoice
]

{ #category : #accessing }
ERRegisterAttendeeController >> invoice: anObject [
	invoice := anObject
]

{ #category : #'tools registry' }
ERRegisterAttendeeController >> register [
	| user |
	user := self session database findUserByEmail: aUser email.
	
	user ifNil: [ 
	self aUser: (self session database addUser: aUser ).
	self daysAssist: (self session database addDaysAssist: daysAssist ).
	Transcript show: self daysAssist monday .
	self invoice: (self session database addInvoice: invoice ).
	self affiliationInfo: (self session database addAffiliationInfo: affiliationInfo ).
	anAccount user: aUser .
	anAccount daysAssist: daysAssist.
	anAccount invoice: invoice .
	anAccount afiliation: affiliationInfo .
	anAccount := self session database addAccount: anAccount .
	anAccount ifNotNil: [
		^ self aUser .
		]]
	ifNotNil: [ 
		Transcript show: 'The user email already exist' .
		^ nil]
]
