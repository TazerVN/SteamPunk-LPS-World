
while true do
    local has_block, data = turtle.inspect()
    if has_block then
        digForward()
        move()
    else
       checkLeftRight()
        
    end


    function digForward ()
        if data.name == "minecraft:oak_log" then
            turtle.dig("right")
        else 
            print("not an oak log")
        end
    end

    function move()
        turtle.forward()
    end

    function checkLeftRight()
        turtle.turnLeft()
        if turtle.detect() == false then
            turtle.turnRight()
            turtle.turnRight()
        elseif turtle.detect() == false then
            turtle.turnLeft()
        else
            dig()
            move()
        end

    end
    
        

end