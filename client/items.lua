local info = {drank = false}

AddEventHandler('linden_inventory:burger', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You ate a delicious burger', length = 2500})
end)

AddEventHandler('linden_inventory:water', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You drank some refreshing water', length = 2500})
end)

AddEventHandler('linden_inventory:cola', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You drank some delicious eCola', length = 2500})
end)

AddEventHandler('linden_inventory:mustard', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. drank mustard', length = 2500})
end)

AddEventHandler('linden_inventory:icecream', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. ate icecream', length = 2500})
end)

AddEventHandler('linden_inventory:hotdog', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. ate a hotdog', length = 2500})
end)
AddEventHandler('linden_inventory:whisky', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. took a shot of whisky', length = 2500})
	info.drank = true
	ShakeGameplayCam("DRUNK_SHAKE", 1.0)
end)

AddEventHandler('linden_inventory:bandage', function()
	local maxHealth = 200
	local health = GetEntityHealth(playerPed)
	local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 16))
	SetEntityHealth(playerPed, newHealth)
end)

AddEventHandler('linden_inventory:armour', function()
	SetPlayerMaxArmour(playerID, 100)
	SetPedArmour(playerPed, 100)
end)
Citizen.CreateThread(function()
	RequestAnimSet("MOVE_M@DRUNK") 
	info.drank = false
	local timer = 0
	while true do 
		Wait(1000)
		if info.drank then
			timer = timer + 100
			info.drank = false
			print("drank")
		end
		if timer > 0 then
			timer = timer - 1
			print(timer)
		end
		if timer > 1290 then
			SetEntityHealth(GetPlayerPed(-1), 0)
		end
		if timer > 700 then
			SetPedMovementClipset(GetPlayerPed(-1), "MOVE_M@DRUNK@VERYDRUNK", 1.0)
		end
		if timer < 500 and timer > 300 then
			SetPedMovementClipset(GetPlayerPed(-1), "MOVE_M@DRUNK@MODERATEDRUNK", 1.0)
		end
		if timer < 300 and timer > 100 then
			SetPedMovementClipset(GetPlayerPed(-1), "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.0)
		end
		if timer < 100 then
			ResetPedMovementClipset(GetPlayerPed(-1), 0.0)
			StopGameplayCamShaking(true)
		end
	end
end)