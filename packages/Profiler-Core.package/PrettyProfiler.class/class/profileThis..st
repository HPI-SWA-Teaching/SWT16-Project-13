text
profileThis: aString
	| profilerInstance |
	
	profilerInstance := self new.
	profilerInstance setBlockInputContentTo: aString.
	profilerInstance openInWorld.
	profilerInstance toggleProfiling