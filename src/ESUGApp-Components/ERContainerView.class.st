Class {
	#name : #ERContainerView,
	#superclass : #ERComponent,
	#instVars : [
		'content',
		'title',
		'iconPage'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERContainerView class >> title: aString icon: anIcon content: aBlock [
	| instance |
	instance := self new.
	instance title: aString.
	instance iconPage: anIcon .
	instance content: aBlock .
	^ instance
]

{ #category : #'as yet unclassified' }
ERContainerView class >> title: aString icon: anIcon content: aBlock id: anId [
	| instance |
	instance := self new.
	instance title: aString.
	instance iconPage: anIcon .
	instance content: aBlock .
	instance id: anId .
	^ instance
]

{ #category : #accessing }
ERContainerView >> content [
	^ content
]

{ #category : #accessing }
ERContainerView >> content: anObject [
	content := anObject
]

{ #category : #accessing }
ERContainerView >> iconPage [
	^ iconPage
]

{ #category : #accessing }
ERContainerView >> iconPage: anObject [
	iconPage := anObject
]

{ #category : #rendering }
ERContainerView >> renderContentOn: html [ 
	html html: '
<br><br><br>        
<div id="', self id,'" class="mdl-card mdl-shadow--16dp">
  <div class="mdl-card__supporting-text">
        <div id="login-fab" class="mdl-color--red mdl-color-text--white">
					<i id="lock-icon" class="material-icons">', self iconPage,'</i>
				</div>
				<div id="card-heading">', self title ,'</div>'.
		self content value.
	html html: '
	</div>
	</div>'
]

{ #category : #accessing }
ERContainerView >> title [
	^ title
]

{ #category : #accessing }
ERContainerView >> title: anObject [
	title := anObject
]
