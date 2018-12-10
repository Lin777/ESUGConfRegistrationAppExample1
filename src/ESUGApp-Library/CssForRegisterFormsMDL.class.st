Class {
	#name : #CssForRegisterFormsMDL,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library-MDL'
}

{ #category : #accessing }
CssForRegisterFormsMDL >> selectorsToInclude [
	^ Array with: 'styleCss' with: 'tabsCss'
]

{ #category : #accessing }
CssForRegisterFormsMDL >> styleCss [
	^ '* {
	overflow-x: hidden;
	margin: 0px;
	padding: 0px;
	align-items: center;
}

body {
	background-image: url(''/files/CssForLoginMDL/profile_city.jpg'');
	background-size: cover;
	background-position: top center;
}

#login-conatiner{
	margin: auto;
}

.mdl-card {
    overflow: visible !important;
    z-index: auto !important;
		width: 80%;

}
.mdl-textfield{
	width: 100%;
}
#login-fab {
	border-radius: 50%;
    height: 56px;
    margin: auto;
    min-width: 56px;
    width: 56px;
    overflow: hidden;
    background: rgba(158,158,158,.2);
    box-shadow: 0 1px 1.5px 0 rgba(0,0,0,.12), 0 1px 1px 0 rgba(0,0,0,.24);
    position: absolute;
    top: -30px;
    text-align: center;
    left: 0;
    right: 0;
}

#lock-icon{
	line-height: 56px;
}

#login-button {
  width: 100%;
  height: 40px;
  min-width: initial;
}

#card-heading{
	text-align: center;
    font-weight: 600;
    font-size: 32px;
    height: 40px;
    padding-top: 40px;
    color: #092e44
}

#forgotpassword{
	float: right;
}


#footer{
 background-color:transparent;
 color:white
}


html {
  min-height: 100%;
  position: relative;
}
body {
  margin: 0;	
}
footer {
  position: absolute;
  bottom: 0;
  width: 100%;
	color: white;
}
table, th, td { border: none; }
'
]

{ #category : #accessing }
CssForRegisterFormsMDL >> tabsCss [
	^ '/*Vertical Tabs*/
.mdl-tabs__panel {
  display: none;
}
.vertical-mdl-tabs {
    margin-top: 30px;
}
.vertical-mdl-tabs .mdl-tabs__tab-bar {
    -webkit-flex-direction: column;
        -ms-flex-direction: column;
            flex-direction: column;
    padding-bottom: 35px;
    height: inherit;
    border-bottom: none;
      border-right: 1px solid rgba(10, 11, 49, 0.20);
}

.vertical-mdl-tabs .mdl-tabs__tab {
    width: 100%;
    height: 35px;
    line-height: 35px;
    box-sizing: border-box;
    letter-spacing: 2px;
}

.vertical-mdl-tabs .mdl-tabs__tab:hover {
  background: rgba(158, 158, 158, 0.34);
  color: white;
}

.vertical-mdl-tabs.mdl-tabs.is-upgraded a.mdl-tabs__tab.is-active {
    border-right: 3px solid #0b7bfb;
}
.vertical-mdl-tabs.mdl-tabs.is-upgraded .mdl-tabs__tab.is-active:after {
    content: inherit;
    height: 0;
}

.vertical-mdl-tabs.mdl-tabs.is-upgraded .mdl-tabs__panel.is-active, .mdl-tabs__panel {
    padding: 0 30px;
}

.vertical-mdl-tabs.mdl-tabs .mdl-tabs__tab {
    text-align: left;
}

.text-center {
  text-align: center;
}

.mdl-tabs.is-upgraded .mdl-tabs__tab.is-active {
   color: #0b7bfb;
}

.mdl-textfield{
}
'
]
