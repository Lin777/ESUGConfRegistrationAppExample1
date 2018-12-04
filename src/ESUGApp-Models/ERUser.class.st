"
User is a class for represent a USER table of Database model.

It offers a way to create the object through of a result of database
"
Class {
	#name : #ERUser,
	#superclass : #SDActiveRecord,
	#instVars : [
		'email',
		'password',
		'role'
	],
	#category : #'ESUGApp-Models'
}

{ #category : #accessing }
ERUser class >> asAdmin [
	^ self new role: 'admin'; yourself 
]

{ #category : #accessing }
ERUser class >> asGroupManager [
	^ self new role: 'groupManager'; yourself 
]

{ #category : #accessing }
ERUser class >> asStudentVolunter [
	^ self new role: 'studentVolunter'; yourself 
]

{ #category : #'as yet unclassified' }
ERUser class >> email: aEmail password: aPassword [
	^ self new email: aEmail; password: aPassword; yourself 
]

{ #category : #'as yet unclassified' }
ERUser class >> hashPassword: aString [

 ^ aString 
  ifEmpty: [0] 
  ifNotEmpty: [GRPlatform current secureHashFor: aString].

]

{ #category : #initialization }
ERUser class >> initialize [
	"self initialize"
	|user account|
	user := ERUser asAdmin email: 'admin@esug.org'; password: (ERUser hashPassword: '12345678') asString.
	user := user save.
	account := ERAccount new firstName: 'Admin'; lastName: 'Admin'; user: user.
	account save.
	
]

{ #category : #tests }
ERUser class >> testUser: aString [ 
	^ (self new) email: (aString, '@gmail.com'); password: (ERUser hashPassword: '12345678') asString; role: 'attendee'; yourself .
	
]

{ #category : #accessing }
ERUser >> email [
	^ email
]

{ #category : #accessing }
ERUser >> email: anObject [
	email := anObject
]

{ #category : #initialization }
ERUser >> initialize [
	super initialize.
	role := 'attendee'.
	
]

{ #category : #accessing }
ERUser >> password [
	^ password
]

{ #category : #accessing }
ERUser >> password: anObject [
	password := anObject
]

{ #category : #accessing }
ERUser >> role [
	^ role
]

{ #category : #accessing }
ERUser >> role: anObject [
	role := anObject
]
