Class {
	#name : #ERDropdownItemObject,
	#superclass : #WAComponent,
	#instVars : [
		'callback',
		'icon',
		'label'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERDropdownItemObject class >> icon: anIcon label: aLabel callback: aBlock [
	^ self new
		icon: anIcon;
		label: aLabel;
		callback: aBlock;
		yourself
]

{ #category : #accessing }
ERDropdownItemObject >> callback [
	^ callback
]

{ #category : #accessing }
ERDropdownItemObject >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
ERDropdownItemObject >> icon [
	^ icon
]

{ #category : #accessing }
ERDropdownItemObject >> icon: anObject [
	icon := anObject
]

{ #category : #accessing }
ERDropdownItemObject >> label [
	^ label
]

{ #category : #accessing }
ERDropdownItemObject >> label: anObject [
	label := anObject
]
