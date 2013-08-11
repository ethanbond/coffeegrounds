module.exports =
	index: (req, res)->
		res.render "newproject",	#views/newproject.dust
			metadata:
				title: "Coffeegrounds"
				description: "This is a brand new Coffeegrounds project."