Class {
	#name : #BaselineOfESUGApp,
	#superclass : #BaselineOf,
	#category : #BaselineOfESUGApp
}

{ #category : #baselines }
BaselineOfESUGApp >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec package: 'ESUGApp-DB' with: [ spec requires: #('Parasol') ];
			package: 'ESUGApp-Library' with: [ spec requires: #('Parasol') ];			
			package: 'ESUGApp-Models' with: [ spec requires: #('Parasol') ];
			package: 'ESUGApp-Session' with: [ spec requires: #('Parasol') ];
			package: 'ESUGApp-Session' with: [ spec requires: #('Parasol') ];
			package: 'ESUGApp-Test' with: [ spec requires: #('Parasol') ]
			]
]

{ #category : #baselines }
BaselineOfESUGApp >> setUpDependencies: spec [
		spec 
			baseline: 'Parasol' with: [
				spec
					loads: 'tests';
					repository: 'github://SeasideSt/Parasol/repository'].	

]
