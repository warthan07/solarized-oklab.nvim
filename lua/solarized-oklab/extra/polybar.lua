local M = {}

--- @param colors ColorScheme
function M.generate(colors)
	local polybar = "; " .. colors["_style_name"] .. " for polybar \n\n[colors]\n"

	local keys = {}
	for key in pairs(colors) do table.insert(keys, key) end
	table.sort(keys)
	for _,key in pairs(keys) do
		if key:sub(1,1) ~= "_" then
			polybar = polybar .. key .. " = \"" .. colors[key] .. "\"\n"
		end
	end
	return polybar
end

return M
