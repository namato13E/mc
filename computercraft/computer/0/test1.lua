local w, h = term.getSize()

local frames = {
{"A","D","V","."},
{"C","O","M","P"},
{"U","T","E","R"},
{"*","*","*","*"}
}

while true do
    term.clear()
    for y=1,h do
        term.setCursorPos(1, y)
        print(table.concat(frames[y]))
    end
    sleep(0.5)
    
    local temp = frames[1]
    for i=1,h-1 do frames[i]=frames[i+1] end
    frames[h] = temp
end
