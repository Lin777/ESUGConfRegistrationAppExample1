Class {
	#name : #ERLoginWithBootstrap,
	#superclass : #ERLogin,
	#category : #'ESUGApp-Views'
}

{ #category : #accessing }
ERLoginWithBootstrap >> email: anObject [
	email := self getInputTextFromTemplate: anObject
]

{ #category : #accessing }
ERLoginWithBootstrap >> getInputTextFromTemplate:anObject [
^ ERTextInputComponent new
		id: anObject id;
		name: anObject id;
		type: anObject type;
		label: anObject label;
		callback: anObject callback;
		yourself 
]

{ #category : #accessing }
ERLoginWithBootstrap >> loginButton: anObject [
	loginButton := 	ERComponentButton loginButton id: (anObject id); name: (anObject id); callback: (anObject callback).
]

{ #category : #accessing }
ERLoginWithBootstrap >> password: anObject [
	password := self getInputTextFromTemplate: anObject
]

{ #category : #rendering }
ERLoginWithBootstrap >> renderContentOn: html [
html div
		id: 'login';
		class: 'container-fluid';
		with: [ html break.
			html break.
			html break.
			html div
				class: 'row';
				with: [ html div class: 'col-sm-4 col-xs-12'.
					html div
						class: 'col-sm-4 col-xs-12';
						with: [ html form
								method: 'post';
								id: 'formLogin';
								with: [ html div
										class: 'panel panel-default';
										with: [ html div
												class: 'panel-heading text-center';
												with: [ html heading
														level3;
														with: 'Please login' ].
											html div
												class: 'panel-body';
												with: [
													html render: self messageComponent .
	html render: self email.
	html render: self password.
	html div
												class: 'panel-footer';
												with: [
	html render: self loginButton] ] ] ] ]].
			html div class: 'col-sm-4 col-xs-12' ]
]
