local drag = 0.3

function dynamics_init()
	return {acc = vmath.vector3()}
end

function dynamics_update(data, velocity, dt)
	-- integrate
	local v = velocity + data.acc * dt
	-- drag
	v = (1 - drag * dt) * v
	-- clear
	data.acc = vmath.vector3()
	return v
end

function dynamics_add_acc(data, acc)
	data.acc = data.acc + acc
end

function dynamics_on_message(data, message_id, message, sender)
	if message_id == hash("add_force") then
		dynamics_add_acc(data, message.force)
	end
end
