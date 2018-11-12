Class {
	#name : #ERDatabase,
	#superclass : #Object,
	#category : #'ESUGApp-DB'
}

{ #category : #actions }
ERDatabase >> connect [

 ^ true
]

{ #category : #actions }
ERDatabase >> connectionFailed [

 ^ false
]

{ #category : #actions }
ERDatabase >> disconnect [

 ^ true

]

{ #category : #actions }
ERDatabase >> findUserByEmail: aEmail [
	self subclassResponsibility 
]
