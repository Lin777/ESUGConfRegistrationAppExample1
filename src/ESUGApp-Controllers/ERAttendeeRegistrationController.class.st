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

{ #category : #initialize }
ERAttendeeRegistrationController >> initialize [
	super initialize.
	attendee := ERAttendee new.
]

{ #category : #action }
ERAttendeeRegistrationController >> save [
	
	attendee save
]
