Class {
	#name : #ERTextSelectWithMDL,
	#superclass : #ERTextSelectComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERTextSelectWithMDL >> renderContentOn: html [
	html mdlTextFieldContainer
		floatingLabel;
		style: 'width:49%';
		with: [ html mdlTextFieldLabel
				for: self id;
				with: self label.
			html select
				class: 'form-control';
				id: self id;
				list: self listOptions;
				callback: self callback ]
]
