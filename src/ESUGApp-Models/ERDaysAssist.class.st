"
User is a class for represent a DAYSASSIT table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERDaysAssist,
	#superclass : #SDActiveRecord,
	#instVars : [
		'monday',
		'tuesday',
		'wednesday',
		'thursday',
		'friday'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #tests }
ERDaysAssist class >> testDaysAssistAllDays [
	^ self new
		monday: true;
		tuesday: true;
		wednesday: true;
		thursday: true;
		friday: true;
		yourself
]

{ #category : #accessing }
ERDaysAssist >> friday [
	^ friday
]

{ #category : #accessing }
ERDaysAssist >> friday: anObject [
	friday := anObject
]

{ #category : #initialization }
ERDaysAssist >> initialize [
	super initialize.
	monday := false.
	tuesday := false.
	wednesday := false.
	thursday := false.
	friday := false.
]

{ #category : #accessing }
ERDaysAssist >> monday [
	^ monday
]

{ #category : #accessing }
ERDaysAssist >> monday: anObject [
	monday := anObject
]

{ #category : #accessing }
ERDaysAssist >> thursday [
	^ thursday
]

{ #category : #accessing }
ERDaysAssist >> thursday: anObject [
	thursday := anObject
]

{ #category : #accessing }
ERDaysAssist >> tuesday [
	^ tuesday
]

{ #category : #accessing }
ERDaysAssist >> tuesday: anObject [
	tuesday := anObject
]

{ #category : #accessing }
ERDaysAssist >> wednesday [
	^ wednesday
]

{ #category : #accessing }
ERDaysAssist >> wednesday: anObject [
	wednesday := anObject
]
