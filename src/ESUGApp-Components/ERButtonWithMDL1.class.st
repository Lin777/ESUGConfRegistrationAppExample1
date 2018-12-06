Class {
	#name : #ERButtonWithMDL1,
	#superclass : #ERButtonRegister,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERButtonWithMDL1 >> renderContentOn: html [
	html mdlButton
		accentColor;
		rippleEffect;
		id: self id;
		type: self type;
		callback: self callback;
		with: self label
]
