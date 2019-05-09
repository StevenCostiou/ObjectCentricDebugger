baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'Avatar'
				with: [ spec repository: 'github://guillep/avatar' ].
			spec
				baseline: 'HaltOnStateAccess'
				with: [ spec repository: 'github://StevenCostiou/Pharo-HaltOnStateAccess' ].
			spec blessing: #baseline.
			spec repository: 'github://StevenCostiou/ObjectCentricDebugger' ]