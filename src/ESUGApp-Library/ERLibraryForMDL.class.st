Class {
	#name : #ERLibraryForMDL,
	#superclass : #ERLibrary,
	#category : #'ESUGApp-Library'
}

{ #category : #updating }
ERLibraryForMDL >> selectorsToInclude [
	^ 
	Array with: 'mdlCss'
]
