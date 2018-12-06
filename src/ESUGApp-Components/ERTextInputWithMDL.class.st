Class {
	#name : #ERTextInputWithMDL,
	#superclass : #ERTextInputComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERTextInputWithMDL >> renderContentOn: html [
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: self id;
				with: self label.
			html mdlTextFieldInput id: self id ; type: self type; callback: self callback ]
	
]
