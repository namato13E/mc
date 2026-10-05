local mon = peripheral.find("modem")
local old = term.redirect(mon)





mon.open(1)
mon.transmit(1,0,"Oui je me balance",shell.run("atime.lua").black)





term.redirect(old)
