local text = {
[[
   ___   _   _  __     __   ___    _   _   ___   _   _ 
  / _ \ | | | | \ \   / /  / _ \  | | | | | _ \ | | | |
 | | | || | | |  \ \ / /  | | | | | | | | |  _/ | |_| |
 | |_| || |_| |   \ V /   | |_| | | |_| | | |   |  _  |
  \___/  \___/     \_/     \___/   \___/  |_|   |_| |_|
  ]], 
  [[
  ____                          _   ____ ___  __  __ 
 / ___|  ___  _ __ ___   ___   | | |  _ \_ _||  \/  |
| |     / _ \| '_ ` _ \ / _ \  | | | | | | | | |\/| |
| |___ |  __/| | | | | |  __/  | | | |_| | | | |  | |
 \____| \___||_| |_| |_|\___|  |_| |____/___||_|  |_|
 ]]
 }
 
 local w, h = term.getSize()
 for i, block in ipairs(text) do
     term.clear()
     local lines = {}
     for line in block:gmatch("[^\n]+") do table.insert(lines, line) end
     local startY = math.floor((h - #lines)/2)
     for j, line in ipairs(lines) do
     term.setCursorPos(math.floor((w - #line)/2), startY + j)
     print(line)
 end
 sleep(2)
end
