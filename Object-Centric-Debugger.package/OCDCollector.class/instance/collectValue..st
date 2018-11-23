behavior - collection
collectValue: node
	installer := OCDValueCollectInstaller on: self.
	installer node: node.
	installer install