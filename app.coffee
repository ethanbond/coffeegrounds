express 	= require 'express'
colors		= require 'colors'
dust		= require 'dustjs-linkedin'
cons 		= require 'consolidate'
sass		= require 'node-sass'

app 		= express()

routes 		= require './routes'
models		= require './models'

app.set 'view engine', 'dust'
app.set 'template engine', 'dust'
app.engine 'dust', cons.dust

app.set 'views', __dirname + '/views'

app.use sass.middleware {
	src: __dirname + '/source',
	dest: __dirname + '/public',
	debug: true,
	outputStyle: 'nested'	
}

app.use express.bodyParser()
app.use express.static(__dirname + '/public')
app.use app.router

app.get '/', routes.newproject

app.listen 3000
console.log 'SUCCESS: Express listening on 3000'.green
console.log 'INFO:    Good luck!'.cyan
