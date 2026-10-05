local heure = os.date("%H")
local soire = {"01", "02", "03", "04", "05", "06", "22", "23","00"}
local function estsoire(h)
    for _, v in ipairs(soire) do
        if v == h then
            return true
        end
    end
    return false
end
if estsoire(heure) then
    term.setCursorPos(1,2)
    term.write("Il est tard non?")
    term.setCursorPos(1,3)
    term.write("d\éj\à ")
    term.write(heure)
    term.write(" heure")
    term.setCursorPos(1,4)
end
