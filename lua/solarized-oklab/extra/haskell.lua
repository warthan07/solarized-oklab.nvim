local M = {}

--- @param colors ColorScheme
function M.generate(colors)
	local haskell = "module " .. colors["_style_name"]:gsub("%s+","") .. " where\n\n"

	local keys = {}
	for key in pairs(colors) do table.insert(keys, key) end
	table.sort(keys)
	for _,key in pairs(keys) do
		if key:sub(1,1) ~= "_" then
			haskell = haskell .. key .. " = \"" .. colors[key] .. "\"\n"
		end
	end
	return haskell
end

return M
