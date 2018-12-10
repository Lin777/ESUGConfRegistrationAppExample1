Class {
	#name : #ERAttendeeRegistrationTabForm,
	#superclass : #WAComponent,
	#instVars : [
		'nextTabFrom',
		'previousTabFrom',
		'attendee',
		'active',
		'id'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #scripting }
ERAttendeeRegistrationTabForm class >> on: anAttendee [
	| form |
	form := self new.
	form attendee: anAttendee.
	^ form
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> activate [
	active := true.
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> attendee: anObject [
	attendee := anObject
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createButtonField: aName with: aBlock [
	^  ERButtonLabel label: aName callback: aBlock 
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createCheckboxField: aName [
	^  ERCheckboxFieldLabel label: aName callback: [ :value |]
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createCheckboxField: aName for: aSymbol [
	^  ERCheckboxFieldLabel label: aName callback: [ :value | attendee perform: aSymbol with: value asString ]
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createPasswordField: aName [
		^ (self createTextField: aName) forPassword.
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createPasswordField: aName for: aSymbol [
	^ (ERTextFieldLabel label: aName callback: [ :value | attendee perform: aSymbol with: (ERUserAccount hashPassword: value asString)] id: (self idFromSymbol: aSymbol) ) forPassword
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createRadioField: aName for: aSymbol list: aList listValues: aListValues [
	^  ERRadioFieldLabel label: aName list: aList listValues: aListValues id: (self idFromSymbol: aSymbol )
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createSelectField: aName for: aSymbol list: aList [
	^  ERSelectFieldLabel label: aName callback: [ :value | attendee perform: aSymbol with: value asString . Transcript show: value] list: aList id: (self idFromSymbol: aSymbol) 
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createTextAreaField: aName for: aSymbol [
	^  ERTextAreaFieldLabel label: aName callback: [ :value | attendee perform: aSymbol with: value asString .Transcript show: value] id: (self idFromSymbol: aSymbol )
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createTextField: aName [
	^ ERTextFieldLabel label: aName callback: [ :value |  ] 
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> createTextField: aName for: aSymbol [
	^  ERTextFieldLabel label: aName callback: [ :value | attendee perform: aSymbol with: value asString . Transcript show: value] id: (self idFromSymbol: aSymbol )
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> deactivate [
	active := false.
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> formId [
	^ self subclassResponsibility.
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> id [
	^ id
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> id: anObject [
	id := anObject
]

{ #category : #building }
ERAttendeeRegistrationTabForm >> idFromSymbol: aSymbol [
	^ (aSymbol substrings: ':') first 
]

{ #category : #initalize }
ERAttendeeRegistrationTabForm >> initialize [
	super initialize.
	active := false.
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> isActive [
	^ active.
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> nextTabFrom [
	^ nextTabFrom
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> nextTabFrom: anObject [
	nextTabFrom := anObject
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> previousTabFrom [
	^ previousTabFrom
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> previousTabFrom: anObject [
	previousTabFrom := anObject
]

{ #category : #rendering }
ERAttendeeRegistrationTabForm >> renderContentOn: html [
	self renderFormOn: html
]

{ #category : #rendering }
ERAttendeeRegistrationTabForm >> renderFromOn: html [
	self subclassResponsibility.
]

{ #category : #accessing }
ERAttendeeRegistrationTabForm >> tabName [
	^ self subclassResponsibility.
]
