module.exports = (robot) ->
	robot.respond /(good job)/i, (msg) ->
		msg.send "Salamat bro! Malakas ka sakin eh!"
	
	robot.respond /(sup bro\?)/i, (msg) ->
		msg.send "Ok lang men"

