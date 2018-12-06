Class {
	#name : #ERLoginWithMDL,
	#superclass : #ERLogin,
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERLoginWithMDL >> email: anObject [
	email := self getMDLInputComponent: anObject 
]

{ #category : #accessing }
ERLoginWithMDL >> forgotPasswordButton: anObject [
	forgotPasswordButton := self getMDLButtonComponent2: anObject
]

{ #category : #'as yet unclassified' }
ERLoginWithMDL >> getMDLButtonComponent1: anObject [
	^ ERButtonWithMDL1 new id: (anObject id); label: (anObject label); callback: (anObject callback); type: (anObject type); yourself 
]

{ #category : #'as yet unclassified' }
ERLoginWithMDL >> getMDLButtonComponent2: anObject [
	^ ERButtonWithMDL2 new id: (anObject id); label: (anObject label); callback: (anObject callback); type: (anObject type); yourself 
]

{ #category : #accessing }
ERLoginWithMDL >> getMDLButtonComponent: anObject [
	^ ERButtonWithMDL new id: (anObject id); label: (anObject label); callback: (anObject callback); type: (anObject type); yourself 
]

{ #category : #accessing }
ERLoginWithMDL >> getMDLInputComponent: anObject [
	^ ERTextInputWithMDL new id: (anObject id); label: (anObject label); callback: (anObject callback); type: (anObject type); yourself 
]

{ #category : #initialization }
ERLoginWithMDL >> initialize [
	super initialize
]

{ #category : #accessing }
ERLoginWithMDL >> loginButton: anObject [
	loginButton := self getMDLButtonComponent: anObject 
]

{ #category : #accessing }
ERLoginWithMDL >> password: anObject [
	password := self getMDLInputComponent:  anObject 
]

{ #category : #accessing }
ERLoginWithMDL >> registerAsGroupManager: anObject [
	registerAsGroupManager := self getMDLButtonComponent2: anObject
]

{ #category : #accessing }
ERLoginWithMDL >> registerButton: anObject [
	registerButton := self getMDLButtonComponent1: anObject .
]

{ #category : #rendering }
ERLoginWithMDL >> renderContentOn: html [
	html
		html:
			'<div  class="mdl-layout mdl-js-layout">
        <div id="login-conatiner" class="mdl-card mdl-shadow--16dp">
            <div class="mdl-card__supporting-text">'.
html form
								method: 'post';
								id: 'formLogin';
								with:[
 html html:           	
	'<div id="login-fab" class="mdl-color--accent mdl-color-text--white">
					<i id="lock-icon" class="material-icons">person</i>
				</div>
				<div id="card-heading">
					User Login
				</div>'.
	html render: self messageComponent.
	html render: self email.
	html render: self password.
	html render: self loginButton.
	html render: self registerButton.
	
	].
	html
		html:
			' 
	</div>
	<div class="mdl-card__actions">'.
	html render: self registerAsGroupManager.
	html render: self forgotPasswordButton.
	
html
		html:
			'</div>
        </div>
	</div>'
]
