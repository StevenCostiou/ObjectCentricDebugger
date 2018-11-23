*Object-Centric-Debugger
collectOCDResultInContext: aClySugsMethodContext
	| nodes node |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aClySugsMethodContext.
	node := nodes first == nodes last
		ifTrue: [ nodes first ]
		ifFalse: [ nodes first parent == nodes last parent
				ifTrue: [ nodes first parent ]
				ifFalse: [ ^ self inform: 'Unable to find the object: selection may be too large' ] ].
	OCDCollector collectValue: node