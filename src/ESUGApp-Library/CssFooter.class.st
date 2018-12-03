Class {
	#name : #CssFooter,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library-MaterialKit'
}

{ #category : #'as yet unclassified' }
CssFooter >> fotterCss [
	^ 'html {
  min-height: 95%;
  position: relative;
}
body {
  margin: 0;
  margin-bottom: 40px;
}
footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 40px;
}
'
]

{ #category : #accessing }
CssFooter >> selectorsToInclude [
 
 ^ Array with: 'footerCss' 
]
