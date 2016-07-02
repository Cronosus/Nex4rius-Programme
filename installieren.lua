-- pastebin run -f fa9gu1GJ
-- von Nex4rius

fs = require("filesystem")
wget = loadfile("/bin/wget.lua")
serverAddresse = "https://raw.githubusercontent.com/Nex4rius/Stargate-Programm/"

if fs.exists("/stargate/Sicherungsdatei.lua") then
  _, _, _, Sprache, _, installieren, control, firstrun, loadfile("/stargate/Sicherungsdatei.lua")()
  if fs.exists("/stargate/sicherNachNeustart.lua") then
    os.execute("del /stargate/sicherNachNeustart.lua")
  end
else
  Sprache = ""
  control = "On"
  firstrun = -2
  installieren = false
end

function Pfad()
  return serverAddresse .. versionTyp
end

function installieren()
  fs.makeDirectory("/stargate/sprache")
  if versionTyp == nil then
    versionTyp = "master"
  end
  wget("-f", Pfad() .. "/autorun.lua", "autorun.lua")
  wget("-f", Pfad() .. "/stargate/Kontrollprogramm.lua", "/stargate/Kontrollprogramm.lua")
  wget("-f", Pfad() .. "/stargate/check.lua", "/stargate/check.lua")
  wget("-f", Pfad() .. "/stargate/version.txt", "/stargate/version.txt")
  wget("-f", Pfad() .. "/stargate/sprache/deutsch.lua", "/stargate/sprache/deutsch.lua")
  wget("-f", Pfad() .. "/stargate/sprache/english.lua", "/stargate/sprache/english.lua")
  wget("-f", Pfad() .. "/stargate/sprache/ersetzen.lua", "/stargate/sprache/ersetzen.lua")
  if not fs.exists("/stargate/adressen.lua") then
    wget(Pfad() .. "/stargate/adressen.lua", "/stargate/adressen.lua")
  end
  if not fs.exists("/stargate/Sicherungsdatei.lua") then
    wget(Pfad() .. "/stargate/Sicherungsdatei.lua", "/stargate/Sicherungsdatei.lua")
  end
  f = io.open ("/stargate/adressen.lua", "r")
  addressRead = true
  leseLaenge = 1000
  while addressRead == true do
    readAddresses = f:read(leseLaenge)
    AdressesLength = string.len(readAddresses)
    if AdressesLength == leseLaenge then
      leseLaenge = leseLaenge * 2
    else
      addressRead = false
    end
  end
  f:close()
  if string.sub(readAddresses, AdressesLength, AdressesLength) == " " then
    f = io.open ("/stargate/adressen.lua", "a")
    f:seek ("end", -1)
    f:write("")
    f:close()
  end
  if versionTyp == "beta" then
    f = io.open ("/stargate/version.txt", "r")
    version = f:read()
    f:close()
    f = io.open ("/stargate/version.txt", "w")
    f:write(version .. " BETA")
    f:close()
  end
  os.execute("del -v installieren.lua")
  installieren = true
  schreibSicherungsdatei()
  os.execute("reboot")
end

function schreibSicherungsdatei()
  f = io.open ("/stargate/Sicherungsdatei.lua", "w")
  f:write('-- pastebin run -f fa9gu1GJ\n')
  f:write('-- von Nex4rius\n')
  f:write('-- https://github.com/Nex4rius/Stargate-Programm\n')
  f:write('--\n')
  f:write('-- to save press "Ctrl + S"\n')
  f:write('-- to close press "Ctrl + W"\n')
  f:write('--\n\n')
  f:write('local IDC = "' .. tostring(IDC) .. '" -- Iris Deactivation Code\n')
  f:write('local autoclosetime = ' .. tostring(autoclosetime) .. ' -- in seconds -- false for no autoclose\n')
  f:write('local RF = ' .. tostring(false) .. ' -- show energy in RF instead of EU\n')
  f:write('local Sprache = "' .. tostring(Sprache) .. '" -- deutsch / english\n')
  f:write('local side = "' .. tostring(side) .. '" -- bottom, top, back, front, right or left\n\n')
  f:write('----------------------------------------------------------------------\n\n')
  f:write('local installieren = ' .. tostring(false) .. '\n')
  f:write('local control = "' .. tostring(control) .. '"\n')
  f:write('local firstrun = ' .. tostring(firstrun) .. '\n\n')
  f:write('----------------------------------------------------------------------\n\n')
  f:write('if type(IDC) ~= "string" then\n')
  f:write('  IDC = ""\n')
  f:write('end\n')
  f:write('if type(autoclosetime) ~= "number" then\n')
  f:write('  autoclosetime = false\n')
  f:write('end\n')
  f:write('if type(RF) ~= "boolean" then\n')
  f:write('  RF = false\n')
  f:write('end\n')
  f:write('if type(Sprache) ~= "string" then\n')
  f:write('  Sprache = ""\n')
  f:write('end\n')
  f:write('if type(side) ~= "string" then\n')
  f:write('  side = "unten"\n')
  f:write('end\n')
  f:write('if type(installieren) ~= "boolean" then\n')
  f:write('  installieren = false\n')
  f:write('end\n')
  f:write('if type(control) ~= "string" then\n')
  f:write('  control = "On"\n')
  f:write('end\n')
  f:write('if type(firstrun) ~= "number" then\n')
  f:write('  firstrun = -2\n')
  f:write('end\n')
  f:write('if type(IDC) ~= "string" then\n')
  f:write('  IDC = ""\n')
  f:write('end\n\n')
  f:write('return IDC, autoclosetime, RF, Sprache, side, installieren, control, firstrun\n')
  f:close()
end

installieren()
