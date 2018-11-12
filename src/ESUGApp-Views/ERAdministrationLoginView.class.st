Class {
	#name : #ERAdministrationLoginView,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERAdministrationLoginView >> renderContentOn: html [ 
	html div id: 'login'; class: 'container-fluid'; with: [ 
		html break . html break . html break .
		html div class: 'row'; with: [ 
			html div class: 'col-sm-4 col-xs-12'.
			html div class: 'col-sm-4 col-xs-12'; with: [ 
				html div class: 'panel panel-default'; with: [ 
					html div class: 'panel-heading text-center'; with: [ 
						html heading level3; with: 'Please login'. ].
					html form action: ''; method: '';onSubmit: 'return validacion()'; id: 'login'; with:[
					html div class: 'panel-body'; with: [ 
						html div class: 'form-group'; with: [ 
							html label: 'Email:'.
							html textInput id: 'email'; type: 'text'; class: 'form-control'; name: 'username'; attributeAt: 'placeholder' put: 'Email address'. ].
						html div class: 'form-group'; with: [ 
							html label: 'Password:'.
							html textInput id: 'password'; type: 'password'; class: 'form-control'; name: 'password'; attributeAt: 'placeholder' put: 'Password'. ].
						 ].].
					html div class: 'panel-footer'; with: [ 
						html button id: 'loginbutton'; type: 'submit'; attributeAt: 'form' put: 'login'; attributeAt: 'value' put: 'Submit';class: 'btn btn-lg btn-block'; with: 'Login'.
						html div class: 'text-center'; with: [ 
							html anchor url: '#register'; with: [ html text: 'Register' ] ] ] ]].
			html div class: 'col-sm-4 col-xs-12'. ] ]
]
