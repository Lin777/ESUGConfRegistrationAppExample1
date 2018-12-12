Class {
	#name : #ERTabGroupRegistrationSummary,
	#superclass : #ERTabContainerPage,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderButtons: html [
	html html: '<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
                    Modify Affiliation
                  </button>
                  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
                    Register Attendee
                  </button>
                  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
                    Pay
                  </button>
                  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored">
                    GENERATE INVOICE
                  </button>'
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderContainer: html [
	html horizontalRule.
	self renderOrganizationName: html.
	self renderPaymentStatus: html.
	self renderButtons: html.
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderOrganizationName: html [
	html paragraph: [ html strong: 'Organization Name: '. html text: attendee orgName ]  .
	
]

{ #category : #rendering }
ERTabGroupRegistrationSummary >> renderPaymentStatus: html [
	html paragraph: [ html strong: 'Payment Status: '. html text: 'No status avaliable. The group has no mmebers ' ]  .
	
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> tabId [
	^ 'Members'
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> tabName [
	^ 'Members'
]

{ #category : #accessing }
ERTabGroupRegistrationSummary >> title [
	^ 'Group Manager Short Description'
]
