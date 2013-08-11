module.exports =
	newproject: (req, res)->
		res.render "newproject",
			metadata:
				title: "Coffeegrounds"
				description: "This is a brand new Coffeegrounds project."