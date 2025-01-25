local fuelLevel = turtle.getFuelLevel()
if fuelLevel == "unlimited" then error("turtle does not need fuel") end

local ok, err = turtle.refuel()
if ok then 
    local newfuelLevel = turtle.getFuelLevel()  
    print(("Refuelled %d, current level is %d"):format(newfuelLevel - fuelLevel, newfuelLevel))
else
    printError(err)
end