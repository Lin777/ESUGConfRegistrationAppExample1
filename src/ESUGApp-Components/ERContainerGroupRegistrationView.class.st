Class {
	#name : #ERContainerGroupRegistrationView,
	#superclass : #ERContainerView,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERContainerGroupRegistrationView >> renderContentPage: html [ 
	html html: '<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">'.
   self renderTabNames: html.
	self renderSummaryPanel: html.
html html:
'                 <div class="mdl-tabs__panel" id="members-panel">
                  <h3>Attends</h3>
                  <button class="mdl-button mdl-js-button mdl-button--colored">
                    Register Attendee
                  </button>
                  <button class="mdl-button mdl-js-button mdl-button--colored">
                    Register Myself as Attendee
                  </button>
                  <hr>
                  <div style="overflow-x:auto;">
                    <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp" style="width:100%;">
                      <thead>
                        <tr>
                          <th class="mdl-data-table__cell--non-numeric">Name(D)</th>
                          <th class="mdl-data-table__cell--non-numeric">Email</th>
                          <th class="mdl-data-table__cell--non-numeric">Fee</th>
                          <th class="mdl-data-table__cell--non-numeric">Has Paid?</th>
                          <th class="mdl-data-table__cell--non-numeric"></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="mdl-data-table__cell--non-numeric">example</td>
                          <td class="mdl-data-table__cell--non-numeric">example@gmail.com</td>
                          <td class="mdl-data-table__cell--non-numeric">660.00 Euros</td>
                          <td class="mdl-data-table__cell--non-numeric">No</td>
                          <td class="mdl-data-table__cell--non-numeric">
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Delete
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify User
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Reset Password
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Apply Reduction
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                            Invoice
                            </button>
                          </td>
                        </tr>
                        <tr>
                          <td class="mdl-data-table__cell--non-numeric">example</td>
                          <td class="mdl-data-table__cell--non-numeric">example@gmail.com</td>
                          <td class="mdl-data-table__cell--non-numeric">660.00 Euros</td>
                          <td class="mdl-data-table__cell--non-numeric">No</td>
                          <td class="mdl-data-table__cell--non-numeric">
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Delete
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify User
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Reset Password
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Apply Reduction
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                            Invoice
                            </button>
                          </td>
                        </tr>
                        <tr>
                          <td class="mdl-data-table__cell--non-numeric">example</td>
                          <td class="mdl-data-table__cell--non-numeric">example@gmail.com</td>
                          <td class="mdl-data-table__cell--non-numeric">660.00 Euros</td>
                          <td class="mdl-data-table__cell--non-numeric">No</td>
                          <td class="mdl-data-table__cell--non-numeric">
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Delete
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify User
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Reset Password
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Apply Reduction
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                            Invoice
                            </button>
                          </td>
                        </tr>
                        <tr>
                          <td class="mdl-data-table__cell--non-numeric">example</td>
                          <td class="mdl-data-table__cell--non-numeric">example@gmail.com</td>
                          <td class="mdl-data-table__cell--non-numeric">660.00 Euros</td>
                          <td class="mdl-data-table__cell--non-numeric">No</td>
                          <td class="mdl-data-table__cell--non-numeric">
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Delete
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Modify User
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Reset Password
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                              Apply Reduction
                            </button>
                            <button class="mdl-button mdl-js-button mdl-button--colored">
                            Invoice
                            </button>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <h6> <strong>Total: </strong> 4 </h6>
                </div>
          </div>'
]

{ #category : #rendering }
ERContainerGroupRegistrationView >> renderSummaryPanel: html [
	html html: '<div class="mdl-tabs__panel is-active" id="summary-panel">
                 <h3>Group Manager Short Description</h3>
                  <hr>
                  <p> <strong> Organization Name: </strong> Example </p>
                  <p> <strong> Payment Status: </strong> No status avaliable. The group has no mmebers </p>
                  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
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
                  </button>
                </div>

'
]

{ #category : #rendering }
ERContainerGroupRegistrationView >> renderTabNames: html [
	html html:  '<div class="mdl-layout__content">
                    <a href="#summary-panel" class="mdl-tabs__tab is-active">Summary</a>
                    <a href="#members-panel" class="mdl-tabs__tab">Members</a>
                </div>'
]
