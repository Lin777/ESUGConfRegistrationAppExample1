Class {
	#name : #ERAttendeeRegistrationController,
	#superclass : #Object,
	#instVars : [
		'attendee'
	],
	#category : #'ESUGApp-Controllers'
}

{ #category : #accessing }
ERAttendeeRegistrationController class >> attendee: anAtteendee [
	|controller|
	controller := self new.
	controller attendee: anAtteendee .
	^ controller 
]

{ #category : #accessing }
ERAttendeeRegistrationController >> attendee [
	^ attendee
]

{ #category : #accessing }
ERAttendeeRegistrationController >> attendee: anObject [
	attendee := anObject 
]

{ #category : #initialize }
ERAttendeeRegistrationController >> initialize [
	super initialize.
	attendee := ERAttendee new.
]

{ #category : #action }
ERAttendeeRegistrationController >> save [
	| attendeeResult |
	attendeeResult := ERUserAccount findUserByEmail: attendee userAccount email.
	attendeeResult
		ifNil: [ | user |
			user := self attendee userAccount save.
			self attendee userAccount: user.
			attendeeResult := self attendee save.
			^ attendeeResult userAccount ].
	^ nil
]
