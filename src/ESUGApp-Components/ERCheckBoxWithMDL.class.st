Class {
	#name : #ERCheckBoxWithMDL,
	#superclass : #ERCheckBox,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERCheckBoxWithMDL >> renderContentOn: html [ 	
	html mdlCheckboxContainer
		rippleEffect;
		for: self id;
		with: [ html mdlCheckbox
				value: true;
				id: self id.
			html mdlCheckboxLabel: self label ]
]
