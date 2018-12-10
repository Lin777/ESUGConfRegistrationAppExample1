Class {
	#name : #ERRegisterWithMDL,
	#superclass : #ERRegisterUser,
	#category : #'ESUGApp-Views'
}

{ #category : #rendering }
ERRegisterWithMDL >> getHtml [
	^ '<div  class="mdl-layout mdl-js-layout">
        <div id="login-conatiner" class="mdl-card mdl-shadow--16dp">
  <div class="mdl-card__supporting-text">
        <div id="login-fab" class="mdl-color--red mdl-color-text--white">
					<i id="lock-icon" class="material-icons">person</i>
				</div>
				<div id="card-heading">Registration</div>
        <div class="mdl-tabs vertical-mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                      <div class="mdl-grid mdl-grid--no-spacing">
                        <div class="mdl-cell mdl-cell--4-col">
                            <div class="mdl-tabs__tab-bar">
                               <a href="#tab1-panel" class="mdl-tabs__tab is-active">
                                   <span class="hollow-circle"></span>
                                    Registration
                               </a>
                               <a href="#tab2-panel" class="mdl-tabs__tab">
                                    <span class="hollow-circle"></span>
                                    Personal Information
                                </a>
                                <a href="#tab3-panel" class="mdl-tabs__tab">
                                    <span class="hollow-circle"></span>
                                    Conference Options
                                </a>
                                <a href="#tab4-panel" class="mdl-tabs__tab">
                                    <span class="hollow-circle"></span>
                                    Affiliation Information
                                </a>
                                <a href="#tab5-panel" class="mdl-tabs__tab">
                                    <span class="hollow-circle"></span>
                                    Aditional Information
                                </a>
                                <a href="#tab6-panel" class="mdl-tabs__tab">
                                    <span class="hollow-circle"></span>
                                    Done
                                </a>
                           </div>
                         </div>

                         <div class="mdl-cell mdl-cell--8-col">'
]

{ #category : #rendering }
ERRegisterWithMDL >> getMDLInputComponent1: anObject [
	^ ERTextInputWithMDL1 new
		id: anObject id;
		label: anObject label;
		callback: anObject callback;
		type: anObject type;
		yourself
]

{ #category : #rendering }
ERRegisterWithMDL >> getMDLInputComponent: anObject [
	^ ERTextInputWithMDL new
		id: anObject id;
		label: anObject label;
		callback: anObject callback;
		type: anObject type;
		yourself
]

{ #category : #rendering }
ERRegisterWithMDL >> getMDLSelectComponent: anObject [
	^ ERTextSelectWithMDL new
		id: anObject id;
		label: anObject label;
		callback: anObject callback;
		listOptions: anObject listOptions;
		yourself
]

{ #category : #rendering }
ERRegisterWithMDL >> renderConferenceInformation: html [
	html html: '<div class="mdl-tabs__panel" id="tab3-panel">
                                Days:'.
	html render: nil
]

{ #category : #rendering }
ERRegisterWithMDL >> renderContactInformation: html [
	html
		html:
			'<div class="mdl-tabs__panel" id="tab2-panel">
                                Address: <br>'.
	html
		render:
			(self
				getMDLInputComponent1: self userContactInformation contactAddress).
	html
		render:
			(self
				getMDLInputComponent1: self userContactInformation contactAddress).
	html
		render:
			(self
				getMDLInputComponent1: self userContactInformation contactCity).
	html
		render:
			(self
				getMDLSelectComponent: self userContactInformation contactCountry).
	html
		render:
			(self
				getMDLInputComponent1: self userContactInformation contactProvince).
	html
		render:
			(self
				getMDLInputComponent1: self userContactInformation contactPostal).
	html
		render:
			(self
				getMDLInputComponent1: self userContactInformation contactFacebook).
	html
		render:
			(self
				getMDLInputComponent1: self userContactInformation contactTwitter).
	html
		render:
			(self
				getMDLInputComponent: self userContactInformation contactHomePage).
	html html: '</div>'
]

{ #category : #rendering }
ERRegisterWithMDL >> renderContentOn: html [
	html html: self getHtml.
	self renderUserInformation: html.
	self renderContactInformation: html.
	self renderConferenceInformation: html.
	self renderAffiliationInformation: html.
	self renderAdditionalInformation: html.
	self renderPaymentInformation: html.
]

{ #category : #rendering }
ERRegisterWithMDL >> renderUserInformation: html [
	html
		html: '<div class="mdl-tabs__panel is-active" id="tab1-panel">'.
	html
		render: (self getMDLInputComponent: self userInformation firstName).
	html
		render: (self getMDLInputComponent: self userInformation lastName).
	html
		render: (self getMDLInputComponent: self userInformation registerEmail).
	html
		render:
			(self getMDLInputComponent: self userInformation registerPassword).
	html
		render:
			(self
				getMDLInputComponent: self userInformation registerConfirmPassword).
				
	html html: '</div>'
]
