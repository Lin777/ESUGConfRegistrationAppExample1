Class {
	#name : #ERAdministrationLoggedInView,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERAdministrationLoggedInView >> renderContentOn: html [
	html div
		class: 'wrapper';
		with: [ html navigation
				id: 'sidebar';
				with: [ html div
						class: 'sidebar-header';
						with: [ html heading
								level3;
								id: 'esug';
								with: 'ESUG' ].
					html unorderedList
						class: 'list-unstyled components';
						with: [ html paragraph id:'userSessionEmail'; with: self session user email.
							html
								listItem: [ html anchor
										url: '#menu';
										with: 'Home' ].
							html listItem
								class: 'active';
								with: [ html anchor
										url: '#';
										with: 'Attendees' ].
							html
								listItem: [ html anchor
										url: '#account';
										with: 'Acount' ] ] ].
			html div
				id: 'content';
				with: [ html navigation
						class: 'navbar1 navbar-default';
						with: [ html div
								class: 'container-fluid';
								with: [ html div
										class: 'navbar-header';
										with: [ html button
												type: 'button';
												id: 'sidebarCollapse';
												class: 'btn btn-primary navbar-btn';
												with: [ html icon class: 'glyphicon glyphicon-align-left' ] ].
									html div
										class: 'collapse navbar-collapse';
										id: 'bs-example-navbar-collapse-1';
										with: [ html unorderedList
												class: 'nav navbar-nav navbar-right';
												with: [ html listItem: [ html anchor: 'Manage Attendees' ] ] ] ] ].
					html div
						class: 'panel panel-default';
						with: [ html div
								class: 'panel-body';
								with: [ html div
										class: 'page-header';
										with: [ html heading
												level1;
												with: 'List of Attendees' ] ] ] ] ]
]
