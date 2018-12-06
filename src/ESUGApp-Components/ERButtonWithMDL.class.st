Class {
	#name : #ERButtonWithMDL,
	#superclass : #ERButtonRegister,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERButtonWithMDL >> renderContentOn: html [
	html mdlButton
		raised;
		accentColor;
		rippleEffect;
		id: self id;
		type: self type;
		callback: self callback;
		with: self label
]
