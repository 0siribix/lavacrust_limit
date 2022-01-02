
minetest.override_item("nether:lava_crust", {
	on_place = function(stack, placer, pt)
		p = minetest.get_pointed_thing_position(pt)
		if p.y > 0 then
			if placer and placer:get_player_name() ~= "" and
					minetest.check_player_privs(placer:get_player_name(), "server") == false then
				minetest.chat_send_player(placer:get_player_name(), "Unable to place lava crust above 0")
				return
			end
		end
		minetest.item_place(stack, placer, pt)
	end
})
