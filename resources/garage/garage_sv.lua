RegisterServerEvent('garage:fixed')
AddEventHandler('garage:fixed', function(total)
  	print("Player ID " ..source)
	-- Get the players money amount
	TriggerEvent('es:getPlayerFromId', source, function(user)
  	-- update player money amount
  	user:removeMoney((total + 0.0))
 	TriggerClientEvent("es_freeroam:notify", source, "CHAR_BANK_MAZE", 1, "Maze Bank", false, "Your money has been updated to ".. tonumber(total).." ~g~$")
 	end)
end)