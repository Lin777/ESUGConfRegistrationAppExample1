Class {
	#name : #ERComponentContent,
	#superclass : #WAComponent,
	#instVars : [
		'content'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #'as yet unclassified' }
ERComponentContent class >> contentHome [
	^ self new
		content: ERHomeComponent new;
		yourself
]

{ #category : #accessing }
ERComponentContent >> content [
	^ content
]

{ #category : #accessing }
ERComponentContent >> content: anObject [
	content := anObject
]

{ #category : #rendering }
ERComponentContent >> renderContentOn: html [ 
	html html: '<div class="main main-raised">
    <div class="container" style="overflow-x:auto;">
      <br><br><br><br><br><br>'.
	html render: self content.
	html html: '<br><br><br><br>
    </div>
  </div>'
]
