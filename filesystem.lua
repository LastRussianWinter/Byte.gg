local file_system = {
    ["Read"] = readfile;
    ["Write"] = writefile;
    ["Append"] = appendfile;
    ["checkfile"] = isfile;
    ["checkfolder"] = isfolder;
    ["makefolder"] = makefolder;
    ["delfolder"] = delfolder;
    ["delfile"] = delfile;
}

if not file_system["checkfolder"]("Byte.gg") then
    file_system["makefolder"]("Byte.gg")
end

if not file_system["checkfolder"]("Byte.gg/ExploitSuite") then
    file_system["makefolder"]("Byte.gg/ExploitSuite")
end

if not file_system["checkfolder"]("Byte.gg/ExploitSuite/Scripts") then
    file_system["makefolder"]("Byte.gg/ExploitSuite/Scripts")
end

if not file_system["checkfolder"]("Byte.gg/ExploitSuite/Scripts/OnLoad") then
    file_system["makefolder"]("Byte.gg/ExploitSuite/Scripts/OnLoad")
end

if not file_system["checkfolder"]("Byte.gg/ExploitSuite/Scripts/Triggered") then
    file_system["makefolder"]("Byte.gg/ExploitSuite/Scripts/Triggered")
end

if not file_system["checkfolder"]("Byte.gg/CustomizeSuite") then
    file_system["makefolder"]("Byte.gg/CustomizeSuite")
end

if not file_system["checkfolder"]("Byte.gg/CustomizeSuite/CustomSkins") then
    file_system["makefolder"]("Byte.gg/CustomizeSuite/CustomSkins")
end

if not file_system["checkfolder"]("Byte.gg/CustomizeSuite/CustomScripts") then
    file_system["makefolder"]("Byte.gg/CustomizeSuite/CustomScripts")
end

if not file_system["checkfolder"]("Byte.gg/CustomizeSuite/CustomScripts/OnLoad") then
    file_system["makefolder"]("Byte.gg/CustomizeSuite/CustomScripts/OnLoad")
end

if not file_system["checkfolder"]("Byte.gg/CustomizeSuite/CustomScripts/OnLoad") then
    file_system["makefolder"]("Byte.gg/CustomizeSuite/CustomScripts/Triggered")
end

--// Create Files

pcall(function()
    if not file_system["checkfile"]("Byte.gg/ExploitSuite/Scripts/Triggered/AllSkins.lua") then
        file_system["Write"](file_system["Write"]("Byte.gg/ExploitSuite/Scripts/Triggered/AllSkins.lua", game:HttpGet("https://raw.githubusercontent.com/LastRussianWinter/Byte.gg/main/_unlockallskins.lua")))
    end
end)
