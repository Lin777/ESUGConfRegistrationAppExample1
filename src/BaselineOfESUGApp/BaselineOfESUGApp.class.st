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
			spec
				package: 'ESUGApp-Components' with: [ spec requires: #('Parasol') ];
				package: 'ESUGApp-ComponentsFactory' with: [ spec requires: #('Parasol') ];
				package: 'ESUGApp-Templates' with: [ spec requires: #('Parasol') ];
				package: 'ESUGApp-Library' with: [ spec requires: #('Parasol') ];
				package: 'ESUGApp-Session' with: [ spec requires: #('Parasol') ];
				package: 'ESUGApp-Views' with: [ spec requires: #('Parasol' 'ESUGApp-Components') ];
				package: 'ESUGApp-Models' with: [ spec requires: #('SandstoneDb') ];
				package: 'ESUGApp-DB' with: [ spec requires: #('SandstoneDb' 'ESUGApp-Models') ];
				package: 'ESUGApp-Controllers'
					with: [ spec requires: #('Parasol' 'ESUGApp-DB' 'ESUGApp-Models') ];
				package: 'ESUGApp-Test'
					with:
						[ spec requires: #('Parasol' 'SandstoneDb' 'ESUGApp-Views' 'ESUGApp-DB' 'ESUGApp-Models') ] ]
]

{ #category : #baselines }
BaselineOfESUGApp >> setUpDependencies: spec [
	spec
		baseline: 'Parasol'
		with: [ spec
				loads: 'tests';
				repository: 'github://SeasideSt/Parasol/repository' ].
	spec
		baseline: 'MaterialDesignLite'
		with: [ spec
				repository: 'github://DuneSt/MaterialDesignLite:master/src' ].
	spec
		project: 'SandstoneDb'
		with: [ spec
				className: 'ConfigurationOfSandstoneDb';
				version: #stable;
				repository: 'http://smalltalkhub.com/mc/gnaritas/SandstoneDb/main' ]
	"			
		Gofer new
    url: 'http://smalltalkhub.com/mc/gnaritas/SandstoneDb/main';
    package: 'ConfigurationOfSandstoneDb';
    load.

(Smalltalk at: #ConfigurationOfSandstoneDb) load."
]
