AddEventHandler('search', function(data)
	if IsEntityPlayingAnim(data.entity, "random@mugging3", "handsup_standing_base", 3) or IsEntityPlayingAnim(data.entity, "mp_arresting", "idle", 3) or IsPedDeadOrDying(data.entity) then
		exports.ox_inventory:openInventory('player', GetPlayerServerId(NetworkGetPlayerIndexFromPed(data.entity)))
	else
		lib.notify({
			description = 'Devi essere armato per perquisire, oppure il player non ha le mani in alto',
			style = {
				backgroundColor = '#000000',
				color = '#ffffff'
			},
			icon = 'people-robbery',
			type = 'error'
		})
	end
end)

exports.ox_target:addGlobalPlayer({
	{
		event = "search",
		icon = 'fa-solid fa-person',
		label = 'Perquisci',
		num = 1
	},
})