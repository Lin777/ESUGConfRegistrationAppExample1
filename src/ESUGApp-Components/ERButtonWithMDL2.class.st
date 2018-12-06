Class {
	#name : #ERButtonWithMDL2,
	#superclass : #ERButtonRegister,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERButtonWithMDL2 >> renderContentOn: html [
	html mdlButton
		raised;
		id: self id;
		type: self type;
		callback: self callback;
		with: self label
]
