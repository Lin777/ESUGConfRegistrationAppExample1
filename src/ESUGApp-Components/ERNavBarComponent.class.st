Class {
	#name : #ERNavBarComponent,
	#superclass : #WAComponent,
	#instVars : [
		'optionList',
		'logoutAction'
	],
	#category : #'ESUGApp-Components'
}

{ #category : #adding }
ERNavBarComponent >> addEntry: aString withAction: aBlock [ 
	^ self optionList add: aString -> aBlock
]

{ #category : #adding }
ERNavBarComponent >> initialize [
	super initialize.
	self optionList: OrderedCollection new.
	"self initializeOptionList
"
]

{ #category : #adding }
ERNavBarComponent >> initializeOptionList [
	optionList
		add:
			(ERNavBarItem new
				label: 'Home';
				iconName: 'home';
				callback: [  ]);
		add:
			(ERDropdownNavBarItem new
				label: "self session user email"'Evelyn';
				icon: 'person';
				callback: [  ];
				listOptions:
					(OrderedCollection new
						add:
							(ERDropdownItemObject new
								label: 'Account';
								icon: 'account_box';
								callback: [  ]);
						add:
							(ERDropdownItemObject new
								label: 'Log Out';
								icon: 'arrow_back';
								callback: [  ]);
						yourself))
]

{ #category : #accessing }
ERNavBarComponent >> logoutAction [
	^ logoutAction
]

{ #category : #accessing }
ERNavBarComponent >> logoutAction: anObject [
	logoutAction := anObject
]

{ #category : #accessing }
ERNavBarComponent >> optionList [
	^ optionList
]

{ #category : #accessing }
ERNavBarComponent >> optionList: anObject [
	optionList := anObject
]

{ #category : #adding }
ERNavBarComponent >> renderContentOn: html [
	html html: '<nav class="navbar fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand">'.
			html text: ERLibrary applicationName.
	html html: ' </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="sr-only">Toggle navigation</span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>

      <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">'.
			self optionList do: [ :each | html render: each ].
html html: '
        </ul>
      </div>
    </div>
  </nav>'
					
]
