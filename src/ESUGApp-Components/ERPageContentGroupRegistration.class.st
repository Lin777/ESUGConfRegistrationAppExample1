Class {
	#name : #ERPageContentGroupRegistration,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERPageContentGroupRegistration >> renderContentOn: html [
	html html: '<br><br>
      <ul class="nav nav-pills-rose">
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Summary</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Members</a>
        </li>
      </ul>'.
	html render: ERPageContentSummaryGroupRegistration new.
	
]
