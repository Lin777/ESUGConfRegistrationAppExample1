Class {
	#name : #ERAttendeeRegistrationController,
	#superclass : #Object,
	#instVars : [
		'attendee'
	],
	#category : #'ESUGApp-Controllers'
}

{ #category : #accessing }
ERAttendeeRegistrationController >> attendee [
	^ attendee
]

{ #category : #actions }
ERAttendeeRegistrationController >> findUserByEmail: aString [ 

 ^ ERAttendee find: [ :each | each userAccount email = aString]
]

{ #category : #initialize }
ERAttendeeRegistrationController >> initialize [
	super initialize.
	attendee := ERAttendee new.
]

{ #category : #action }
ERAttendeeRegistrationController >> save [
	| attendeeResult |
	attendeeResult := self findUserByEmail: attendee userAccount email.
	attendeeResult
		ifNil: [ 
			|user|
			user := self attendee userAccount save.
			self attendee userAccount: user.
			attendeeResult := self attendee save.
			^ attendeeResult ].
	^ nil
	
]
