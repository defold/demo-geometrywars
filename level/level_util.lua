-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local level_width = 1180
local level_height = 620
local screen_width = 1280
local screen_height = 720

function level_get_aabb()
	local padding_x = (screen_width - level_width) * 0.5
	local padding_y = (screen_height - level_height) * 0.5
	local level_min = vmath.vector3(padding_x, padding_y, 0)
	local level_max = vmath.vector3(screen_width - padding_x, screen_height - padding_y, 0)
	return level_min, level_max
end

function draw_box(min, max)
	local c = vmath.vector4(1, 1, 1, 1)
	msg.post("@render:", "draw_line", { start_point = vmath.vector3(min.x, min.y, 0), end_point = vmath.vector3(max.x, min.y, 0), color = c } )
	msg.post("@render:", "draw_line", { start_point = vmath.vector3(min.x, max.y, 0), end_point = vmath.vector3(max.x, max.y, 0), color = c } )
	msg.post("@render:", "draw_line", { start_point = vmath.vector3(min.x, min.y, 0), end_point = vmath.vector3(min.x, max.y, 0), color = c } )
	msg.post("@render:", "draw_line", { start_point = vmath.vector3(max.x, min.y, 0), end_point = vmath.vector3(max.x, max.y, 0), color = c } )
end

function level_draw()
	local min, max = level_get_aabb()
	draw_box(min, max)
	local margin = 5
	min.x = min.x - margin
	min.y = min.y - margin
	max.x = max.x + margin
	max.y = max.y + margin
	draw_box(min, max)
end