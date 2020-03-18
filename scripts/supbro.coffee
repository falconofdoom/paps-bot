module.exports = (robot) ->
	robot.hear /(good job)/i, (msg) ->
		msg.send "Salamat bro! Malakas ka sakin eh!"
	
	robot.hear /(kumusta\?)/i, (msg) ->
		msg.send "Ok lang men"

