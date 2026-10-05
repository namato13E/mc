 local mon = peripheral.find("monitor")
 local old = term.redirect(mon)
 while true do
     term.clear()
     term.setCursorPos(1,1)
     shell.run("id")
     term.setCursorPos(5,13)
     shell.run("time")
     sleep(1)
 end
