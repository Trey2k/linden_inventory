local info = {whisky = false, vodka = false, beer = false, margarita = false}

AddEventHandler('linden_inventory:burger', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You ate a delicious burger', length = 2500})
end)

AddEventHandler('linden_inventory:moneyshot', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You ate a Money Shot burger', length = 2500})
	SetPlayerMaxArmour(PlayerId(), 150)
	print(GetPlayerMaxArmour(PlayerId()))
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

AddEventHandler('linden_inventory:bread', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. ate an entire loaf of bread', length = 2500})
end)

AddEventHandler('linden_inventory:tomato', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. ate a tomato', length = 2500})
end)

AddEventHandler('linden_inventory:cheese', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. ate a slice of cheese', length = 2500})
end)

AddEventHandler('linden_inventory:whisky', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. took a shot of whisky', length = 2500})
	info.whisky = true
	ShakeGameplayCam("DRUNK_SHAKE", 1.0)
end)

AddEventHandler('linden_inventory:vodka', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. drank a bottle of vodka', length = 2500})
	info.vodka = true
	ShakeGameplayCam("DRUNK_SHAKE", 1.0)
end)

AddEventHandler('linden_inventory:beer', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. drank a bottle of beer', length = 2500})
	info.beer = true
	ShakeGameplayCam("DRUNK_SHAKE", 1.0)
end)

AddEventHandler('linden_inventory:margarita', function()
	TriggerEvent('mythic_notify:client:SendAlert', {type = 'inform', text = 'You.. drank a margarita', length = 2500})
	info.margarita = true
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
	RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
	RequestAnimSet("MOVE_M@DRUNK@MODERATEDRUNK")
	RequestAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK") 
	info.whisky = false
	info.vodka  = false
	local timer = 0
	while true do 
		if IsControlPressed(0, 179) then
			print(GetPlayerMaxArmour(PlayerId()))
		end
		Citizen.Wait(1000)
		if info.whisky then
			timer = timer + 100
			info.whisky = false
		end
		if info.vodka then
			timer = timer + 1000
			info.vodka = false
		end
		if info.beer then
			timer = timer + 25
			info.beer = false
		end
		if info.margarita then
			timer = timer + 300
			info.margarita = false
		end
		if timer > 0 then
			timer = timer - 1
		end
		if timer > 1600 then
			SetEntityHealth(GetPlayerPed(-1), 0)
		end
		if timer > 900 then
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