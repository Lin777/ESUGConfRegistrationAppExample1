Class {
	#name : #ERGroupManagerViewController,
	#superclass : #Object,
	#instVars : [
		'user',
		'attendee'
	],
	#category : #'ESUGApp-Controllers'
}

{ #category : #adding }
ERGroupManagerViewController >> addAttendee: anAttendee to: aGroupManager [
	| group |
	group := self groupOfAttendee: aGroupManager .
	
]

{ #category : #adding }
ERGroupManagerViewController >> groupOfAttendee: aGroupManager [
	| group |
	group := ERGroup findGroupByUser: aGroupManager.
	group ifNil: [ ^ (ERGroup groupManager: aGroupManager) save ].
	^ group
	
]
