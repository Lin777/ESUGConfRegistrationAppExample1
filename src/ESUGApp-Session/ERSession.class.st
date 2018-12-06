Class {
	#name : #ERSession,
	#superclass : #WASession,
	#instVars : [
		'user',
		'database',
		'account'
	],
	#category : #'ESUGApp-Session'
}

{ #category : #accessing }
ERSession >> account [
	^ account
]

{ #category : #accessing }
ERSession >> account: anObject [
	account := anObject
]

{ #category : #accessing }
ERSession >> database [
	^ database
]

{ #category : #accessing }
ERSession >> database: anObject [
	database := anObject
]

{ #category : #actions }
ERSession >> findUserByEmail: anEmail [

 ^ self database findUserByEmail: anEmail

]

{ #category : #actions }
ERSession >> initialize [
 
 super initialize.
 self database: ERSandstoneDatabase new.

]

{ #category : #actions }
ERSession >> isLoggedIn [

 ^ self user notNil
]

{ #category : #actions }
ERSession >> login: aUser [
	self user: aUser.
	self account: (self database getAccountByUser: aUser)
]

{ #category : #actions }
ERSession >> logout [
	self user: nil.
	self account: nil
]

{ #category : #actions }
ERSession >> responseForRequest: aRequest [

 self database connectionFailed
  ifTrue: [^ WAResponse new nextPutAll: 'No Database Connection'].
 ^ super responseForRequest: aRequest

]

{ #category : #'parent/child' }
ERSession >> unregistered [

 self database disconnect.
 super unregistered.
]

{ #category : #updating }
ERSession >> updateRoot: anHtmlRoot [

 super updateRoot: anHtmlRoot.
 anHtmlRoot title: ERLibrary applicationName.
 anHtmlRoot beHtml5.
	    anHtmlRoot stylesheet url: (WAUrl absolute: 'https://code.getmdl.io/1.3.0/material.blue-red.min.css').
]

{ #category : #accessing }
ERSession >> user [
	^ user
]

{ #category : #accessing }
ERSession >> user: anObject [
	user := anObject
]
