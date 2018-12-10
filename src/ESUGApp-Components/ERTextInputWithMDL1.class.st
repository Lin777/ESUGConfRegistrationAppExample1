Class {
	#name : #ERTextInputWithMDL1,
	#superclass : #ERTextInputComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERTextInputWithMDL1 >> renderContentOn: html [
	html mdlTextFieldContainer
		floatingLabel; style: 'width:49%';
		with: [ html mdlTextFieldLabel
				for: self id;
				with: self label.
			html mdlTextFieldInput
				id: self id;
				type: self type;
				callback: self callback ]
]
