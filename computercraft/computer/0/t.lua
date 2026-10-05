while true do
    local mon = peripheral.find("monitor")
    mon.clear()
    mon.setCursorPos(1,1)
    mon.write(os.date("%H;%M:%S"))
    sleep(1)
end
