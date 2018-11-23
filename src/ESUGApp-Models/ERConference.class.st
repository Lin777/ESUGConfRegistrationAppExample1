"
User is a class for represent a CONFERENCE table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERConference,
	#superclass : #SDActiveRecord,
	#instVars : [
		'name',
		'description',
		'start',
		'stop',
		'stateRegistration',
		'attendees',
		'prices'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #tests }
ERConference class >> testConference: aString [
	^ self new
		name: aString;
		description: aString , ' description ....';
		start: (Date newDay: 14 month: #Feb year: 2019);
		stop: (Date newDay: 24 month: #Feb year: 2019);
		stateRegistration: true;
		attendees: OrderedCollection new;
		prices: (OrderedCollection new add: (ERPrice testPriceEarlybirdFee: '200'); add: (ERPrice testPriceStandardFee: '400'); yourself) ;
		yourself
]

{ #category : #initialization }
ERConference >> addAttendee: anAccount [
	^ self attendees add: anAccount 
]

{ #category : #initialization }
ERConference >> addPrice: anPrice [
	^ self prices add: anPrice  
]

{ #category : #accessing }
ERConference >> attendees [
	^ attendees
]

{ #category : #accessing }
ERConference >> attendees: anObject [
	attendees := anObject
]

{ #category : #accessing }
ERConference >> description [
	^ description
]

{ #category : #accessing }
ERConference >> description: anObject [
	description := anObject
]

{ #category : #initialization }
ERConference >> initialize [
	super initialize.
	self attendees: OrderedCollection new.
	self prices: OrderedCollection new.
]

{ #category : #accessing }
ERConference >> name1 [
	^ name
]

{ #category : #accessing }
ERConference >> name: anObject [
	name := anObject
]

{ #category : #accessing }
ERConference >> prices [
	^ prices
]

{ #category : #accessing }
ERConference >> prices: anObject [
	prices := anObject
]

{ #category : #accessing }
ERConference >> start [
	^ start
]

{ #category : #accessing }
ERConference >> start: anObject [
	start := anObject
]

{ #category : #accessing }
ERConference >> stateRegistration [
	^ stateRegistration
]

{ #category : #accessing }
ERConference >> stateRegistration: anObject [
	stateRegistration := anObject
]

{ #category : #accessing }
ERConference >> stop [
	^ stop
]

{ #category : #accessing }
ERConference >> stop: anObject [
	stop := anObject
]
