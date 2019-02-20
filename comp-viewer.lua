-- pastebin run P99QiVfG
-- von Nex4rius
-- https://github.com/Nex4rius/Nex4rius-Programme/

local c = require("component")
local fs = require("filesystem")
local term = require("term")
local pfad = "comp-temp"

local d = io.open(pfad, "w")

for k,v in require("component").list() do
  d:write(string.format("%s - %s\n", v, k))
  for i in pairs(c.list(v)) do
    for j in pairs(c.methods(i)) do
      d:write("  " .. j .. "\n    " .. tostring(c.doc(i, j)) .. "\n")
    end
    d:write("\n\n")
  end
end

os.execute("view " .. pfad)
os.execute("del " .. pfad)
