restify = require 'restify'

server = restify.createServer
	name: 'Ranking API'

server.use restify.acceptParser(server.acceptable)
server.use restify.queryParser()
server.use restify.bodyParser()

server.listen 8080, ->
	console.log '%s listening at %s', server.name, server.url