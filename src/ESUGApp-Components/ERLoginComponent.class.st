Class {
	#name : #ERLoginComponent,
	#superclass : #WAComponent,
	#instVars : [
		'emailComp',
		'passComp',
		'buttonComp'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'initialize-release' }
ERLoginComponent class >> controller: aController [
	^ self new controller: aController; yourself 
]

{ #category : #accessing }
ERLoginComponent >> buttonComp [
	^ buttonComp
]

{ #category : #accessing }
ERLoginComponent >> buttonComp: anObject [
	buttonComp := anObject
]

{ #category : #accessing }
ERLoginComponent >> emailComp [
	^ emailComp
]

{ #category : #accessing }
ERLoginComponent >> emailComp: anObject [
	emailComp := anObject
]

{ #category : #accessing }
ERLoginComponent >> passComp [
	^ passComp
]

{ #category : #accessing }
ERLoginComponent >> passComp: anObject [
	passComp := anObject
]

{ #category : #rendering }
ERLoginComponent >> renderContentOn: html [
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
												with: [ html render: self emailComp.
													html render: self passComp ].
											html div
												class: 'panel-footer';
												with: [ html render: self buttonComp.
													html div
														class: 'text-center';
														with: [ html anchor
																url: '#register';
																with: [ html text: 'Register' ] ] ] ] ] ] ].
			html div class: 'col-sm-4 col-xs-12' ]
]
