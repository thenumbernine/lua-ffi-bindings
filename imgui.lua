-- switching over to the autogen luajit bindings at https://github.com/sonoro1234/LuaJIT-ImGui
local ffi = require 'ffi'
local imgui_sdl = require 'imgui.sdl'
local ig = imgui_sdl.lib 

-- I would use the ffi comparison, but it is only checks wrt const-ness
-- it doesn't equate pointers and arrays
local function isptr(x, ptrPattern)
	if type(x) ~= 'cdata' then return false end
	local ctype = tostring(ffi.typeof(x))
	-- the original ctype
	return ctype:match('^ctype<'..ptrPattern..'%s*%*>$')
	-- maybe const
		or ctype:match('^ctype<const%s+'..ptrPattern..'%s*%*>$')
	-- maybe array
		or ctype:match('^ctype<'..ptrPattern..'%s*%[.*%]>$')
	-- maybe const array
		or ctype:match('^ctype<const%s+'..ptrPattern..'%s*%[.*%]>$')
end

local ImVec2 = imgui_sdl.ImVec2
local ImVec4 = imgui_sdl.ImVec4

-- [[ implementing function overloading
local wrapper = setmetatable({
	ImVec2 = ImVec2,
	ImVec4 = ImVec4,
	
	igBegin = function(...)
		local n = select('#', ...)
		local name, p_open, flags = ...
		if n < 2 then p_open = nil end
		if n < 3 then flags = 0 end
		return ig.igBegin(name, p_open, flags)
	end,
	igBeginChild = function(...)
		local n = select('#', ...)
		local arg1, size, border, extra_flags = ...
		if n < 2 then size = ImVec2(0,0) end
		if n < 3 then border = false end
		if n < 4 then extra_flags = 0 end
		if type(arg1) == 'number'
		or (type(arg1) == 'cdata' and ffi.istype('ImGuiID', arg1))
		then
			return ig.igBeginChildEx(arg1, size, border, extra_flags)
		else	-- string
			return ig.igBeginChild(arg1, size, border, extra_flags)
		end
	end,
	igBeginMenu = function(...)
		local n = select('#', ...)
		local label, enabled = ...
		if n < 2 then enabled = true end
		return ig.igBeginMenu(label, enabled)
	end,
	igBeginPopupModal = function(...)
		local n = select('#', ...)
		local name, p_open, extra_flags = ...
		if n < 2 then p_open = nil end
		if n < 3 then extra_flags = 0 end
		return ig.igBeginPopupModal(name, p_open, extra_flags)
	end,
	igButton = function(...)
		local n = select('#', ...)
		local label, size = ...
		if n < 2 then size = ImVec2(0,0) end
		return ig.igButton(label, size)
	end,
	igCollapsingHeader = function(...)
		local n = select('#', ...)
		-- if the 2nd arg is a pointer then use the 2nd prototype
		if isptr(select(2, ...), 'bool') then
			local label, p_open, flags = ...
			if n < 3 then flags = 0 end
			return ig.igCollapsingHeader_BoolPtr(label, p_open, flags)
		else
			local label, flags = ...
			if n < 2 then flags = 0 end
			return ig.igCollapsingHeader_TreeNodeFlags(label, flags)
		end
	end,
	igCombo = function(...)
		local n = select('#', ...)
		local arg3 = select(3, ...)
		local type3 = type(arg3)
		if isptr(select(3, ...), 'char%s*%*') then
			local label, current_item, items, item_count, height_in_items = ...
			if n < 5 then height_in_items = -1 end
			return ig.igCombo_Str_arr(label, current_item, items, item_count, height_in_items)
		elseif type3 == 'function' or ctype3 == 'ctype<bool (*)()>'  then	-- why doesn't ffi.typeof(ffi.cast) for callbacks show any arguments?
			local label, current_item, items_getter, data, items_count, height_in_items = ...
			if n < 6 then height_in_items = -1 end
			return ig.igCombo_FnBoolPtr(label, current_item, items_getter, data, items_count, height_in_items)
		-- lua compat:
		elseif type3 == 'table' then
			local label, current_item, item_table, height_in_items = ...
			if n < 4 then height_in_items = -1 end
			local items_separated_by_zeros = table.concat(item_table, '\0')..'\0'
			return ig.igCombo_Str(label, current_item, items_separated_by_zeros, height_in_items)
		else
			local label, current_item, items_separated_by_zeros, height_in_items = ...
			if n < 4 then height_in_items = -1 end
			return ig.igCombo_Str(label, current_item, items_separated_by_zeros, height_in_items)
		end
	end,
	igColorButton = function(...)
		local n = select('#', ...)
		local col, small_height, outline_border = ...
		if type(col) == 'table' then col = ImVec4(table.unpack(col,1,4)) end
		if n < 2 then small_height = false end
		if n < 3 then outline_border = true end
		return ig.igColorButton(col, small_height, outline_border)
	end,
	igInputFloat = function(...)
		local n = select('#', ...)
		local label, v, step, step_fast, format, flags = ...
		if n < 3 then step = 0 end
		if n < 4 then step_fast = 0 end
		if n < 5 then format = '%3f' end
		if n < 6 then flags = 0 end
		return ig.igInputFloat(label, v, step, step_fast, format, flags)
	end,
	igInputFloat2 = function(...)
		local n = select('#', ...)
		local label, v, format, flags = ...
		if n < 3 then format = '%3f' end
		if n < 4 then flags = 0 end
		return ig.igInputFloat2(label, v, format, flags)
	end,
	igInputFloat3 = function(...)
		local n = select('#', ...)
		local label, v, format, flags = ...
		if n < 3 then format = '%3f' end
		if n < 4 then flags = 0 end
		return ig.igInputFloat3(label, v, format, flags)
	end,
	igInputFloat4 = function(...)
		local n = select('#', ...)
		local label, v, format, flags = ...
		if n < 3 then format = '%3f' end
		if n < 4 then flags = 0 end
		return ig.igInputFloat4(label, v, format, flags)
	end,
	igInputInt = function(...)
		local n = select('#', ...)
		local label, v, step, step_fast, extra_flags = ...
		if n < 3 then step = 1 end
		if n < 4 then step_fast = 100 end
		if n < 5 then extra_flags = 0 end
		return ig.igInputInt(label, v, step, step_fast, extra_flags)
	end,
	igInputInt2 = function(...)
		local n = select('#', ...)
		local label, v, extra_flags = ...
		if n < 3 then extra_flags = 0 end
		return ig.igInputInt2(label, v, extra_flags)
	end,
	igInputInt3 = function(...)
		local n = select('#', ...)
		local label, v, extra_flags = ...
		if n < 3 then extra_flags = 0 end
		return ig.igInputInt3(label, v, extra_flags)
	end,
	igInputInt4 = function(...)
		local n = select('#', ...)
		local label, v, extra_flags = ...
		if n < 3 then extra_flags = 0 end
		return ig.igInputInt4(label, v, extra_flags)
	end,
	igGetCursorScreenPos = (function()
		local result = ffi.new('struct ImVec2[1]')
		return function()
			ig.igGetCursorScreenPos_nonUDT(result)
			return result[0]
		end
	end)(),
	igGetMousePos = (function()
		local result = ffi.new('struct ImVec2[1]')
		return function()
			ig.igGetMousePos_nonUDT(result)
			return result[0]
		end
	end)(),
	igGetWindowSize = (function()
		local result = ffi.new('struct ImVec2[1]')
		return function()
			ig.igGetWindowSize_nonUDT(result)
			return result[0]
		end
	end)(),
	igImage = function(...)
		local n = select('#', ...)
		local user_texture_id, size, uv0, uv1, tint_col, border_col = ...
		if n < 3 then uv0 = ImVec2(0,0) end
		if n < 4 then uv1 = ImVec2(1,1) end
		if n < 5 then tint_col = ImVec4(1,1,1,1) end
		if n < 6 then border_col = ImVec4(0,0,0,0) end
		return ig.igImage(user_texture_id, size, uv0, uv1, tint_col, border_col)
	end,
	igImageButton = function(...)
		local n = select('#', ...)
		local user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col = ...
		if n < 3 then uv0 = ImVec2(0,0) end
		if n < 4 then uv1 = ImVec2(1,1) end
		if n < 5 then frame_padding = -1 end
		if n < 6 then bg_col = ImVec4(0,0,0,0) end
		if n < 7 then tint_col = ImVec4(1,1,1,1) end
		return ig.igImageButton(user_texture_id, size, uv0, uv1, frame_padding, bg_col, tint_col)
	end,
	igInputText = function(...)
		local n = select('#', ...)
		local label, buf, buf_size, flags, callback, user_data = ...
		if n < 4 then flags = 0 end
		if n < 5 then callback = nil end
		if n < 6 then user_data = nil end
		return ig.igInputText(label, buf, buf_size, flags, callback, user_data)
	end,
	igInputTextMultiline = function(...)
		local n = select('#', ...)
		local label, buf, buf_size, size, flags, callback, user_data = ...
		if n < 4 then size = ImVec2(0,0) end
		if n < 5 then flags = 0 end
		if n < 6 then callback = nil end
		if n < 7 then user_data = nil end
		return ig.igInputTextMultiline(label, buf, buf_size, size, flags, callback, user_data)
	end,
	igMenuItem = function(...)
		local n = select('#', ...)
		local label, shortcut, arg2, enabled = ...
		if n < 2 then shortcut = nil end
		if n < 3 then arg2 = false end
		if n < 4 then enabled = true end
		if isptr(arg2, 'bool') then
			return ig.igMenuItemBoolPtr(label, shortcut, arg2, enabled)
		else
			return ig.igMenuItemBool(label, shortcut, arg2, enabled)
		end
	end,
	igSameLine = function(...)
		local n = select('#', ...)
		local pos_x, spacing_w = ...
		if n < 1 then pos_x = 0 end
		if n < 2 then spacing_w = -1 end
		return ig.igSameLine(pos_x, spacing_w)
	end,
	igSelectable = function(...)
		local n = select('#', ...)
		local label, arg2, flags, size = ...
		if n < 2 then arg2 = false end
		if n < 3 then flags = 0 end
		if n < 4 then size = ImVec2(0,0) end
		if isptr(arg2, 'bool') then
 			return ig.igSelectableEx(label, arg2, flags, size)
		else
			return ig.igSelectable(label, arg2, flags, size)
		end
	end,
	igSetScrollHere = function(...)
		local n = select('#', ...)
		local center_y_ratio = ...
		if n < 1 then center_y_ratio = .5 end
		return ig.igSetScrollHere(center_y_ratio)
	end,
	igSetScrollFromPosY = function(...)
		local n = select('#', ...)
		local pos_y, center_y_ratio = ...
		if n < 2 then center_y_ratio = .5 end
		return ig.igSetScrollFromPosY(pos_y, center_y_ratio)
	end,
	igSliderFloat = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat(label, v, v_min, v_max, display_format, power)
	end,
	igSliderFloat2 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat2(label, v, v_min, v_max, display_format, power)
	end,
	igSliderFloat3 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat3(label, v, v_min, v_max, display_format, power)
	end,
	igSliderFloat4 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format, power = ...
		if n < 4 then display_format = '%.3f' end
		if n < 5 then power = 1 end
		return ig.igSliderFloat4(label, v, v_min, v_max, display_format, power)
	end,
	igSliderInt = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt(label, v, v_min, v_max, display_format)
	end,
	igSliderInt2 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt2(label, v, v_min, v_max, display_format)
	end,
	igSliderInt3 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt3(label, v, v_min, v_max, display_format)
	end,
	igSliderInt4 = function(...)
		local n = select('#', ...)
		local label, v, v_min, v_max, display_format = ...
		if n < 4 then display_format = '%.0f' end
		return ig.igSliderInt4(label, v, v_min, v_max, display_format)
	end,
}, {
	__index = ig,
})

return wrapper
--]]
--[[ no overloading
return ig
--]]
