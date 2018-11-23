Class {
	#name : #ERTestModels,
	#superclass : #TestCase,
	#instVars : [
		'database',
		'store',
		'user1',
		'user2'
	],
	#category : #'ESUGApp-Test'
}

{ #category : #accessing }
ERTestModels >> database [
	^ database
]

{ #category : #accessing }
ERTestModels >> database: anObject [
	database := anObject
]

{ #category : #factory }
ERTestModels >> defaultStore [
	^ SDMemoryStore new
]

{ #category : #tests }
ERTestModels >> setUp [
	store := self defaultStore.
	SDActiveRecord setStore: store.
	"only want to warm up test models, not anything else that might be in this image"
	SDFooObject warmUp.
	database := ERSandstoneDatabase new.
	ERUser withAllSubclasses do: [ :each | each warmUp ].
	
	user1 := ERUser testUser: 'user1'.
	user2 := ERUser testUser: 'user2'.

]

{ #category : #running }
ERTestModels >> tearDown [
	ERUser do: [ :each | [each delete] on: Error do: [] ].
	ERUser coolDown.
	SDFooObject do: [:each | [each delete] on: Error do: [] ].
	ERUser allSubclassesDo: [ :each | each coolDown ].
	Smalltalk garbageCollectMost 
]

{ #category : #tests }
ERTestModels >> testAddUser [
	|user|
	
	user := user1 .
	user := self database addUser: user.
	
	self deny: user equals: nil .
]

{ #category : #tests }
ERTestModels >> testValidateLoginExistentUser [
	|result|
	result := user1 "database validateUserLogin: (ERUser new email: 'foo@gmail.com'; password: (ERUser hashPassword: '12345678') asString)".
	self deny: (result isNil)
]

{ #category : #tests }
ERTestModels >> testValidateLoginNonExistentUser [
	| result |
	result := database
		validateUserLogin:
			user2.
	self assert: result isNil
]
