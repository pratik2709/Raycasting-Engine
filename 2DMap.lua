cos1 = cos function cos(angle) return cos1(angle/(3.1415*2)) end
sin1 = sin function sin(angle) return sin1(-angle/(3.1415*2)) end

function _init()
    map = {
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 3, 0, 3, 0, 0, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 1, 1, 1 },
        { 1, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 },
        { 1, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 1, 1, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 1, 1, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 4, 0, 0, 4, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 0, 2, 4, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 4, 3, 3, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 3, 3, 4, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }
    };
    pi = 3.14159
    twopi = 6.28318
    player = {
        x = 16,
        y = 10,
        dir = 0,
        rot = 0,
        speed = 0,
        moveSpeed = 0.18,
        rotSpeed = 6 * pi / 180
    }

    screenWidth = 128 --diff
    stripWidth = 10 --diff
    fov = 60 * pi / 180
    numRays = ceil(screenWidth / stripWidth)
    viewDist = (screenWidth / 2) / (sin(fov / 2) / cos(fov / 2))
    mapWidth = 32 --diff
    mapHeight = 24
    miniMapScale = 3
end

function drawMiniMap()
    for y = 1, mapHeight, 1
    do
        for x = 1, mapWidth, 1
        do
            local wall = map[y][x]
            if wall > 0 then
                rectfill(x * miniMapScale, y * miniMapScale, x * miniMapScale + miniMapScale, y * miniMapScale + miniMapScale)
            end
        end
    end
end

function _update()
    cls()
    drawMiniMap()
    if not btn(2) and not btn(3) then
        player.speed = 0
    end

    if not btn(0) and not btn(1) then
        player.dir = 0
    end
    --left
    if btn(0) then
        player.dir = -1;
    end
    --right
    if btn(1) then
        player.dir = 1;
    end
    --up
    if btn(2) then
        player.speed = 1;
    end
    --down
    if btn(3) then
        player.speed = -1;
    end

    --z
    if btn(4) then
        player.speed = 0;
        player.dir = 0;
    end

    move()
    updateMiniMap()
    castRays()
end

function castRays()
    local stripIdx = 1
    for i = 1, numRays+1, 1 do
        --understand?
        rayScreenPos = (-numRays + i) * stripWidth
        rayViewDist = sqrt(rayScreenPos * rayScreenPos + viewDist * viewDist)
        rayAngle = asin(rayScreenPos / rayViewDist)
        castSingleRay(player.rot + rayAngle) --slightly confusing
    end
end

function castSingleRay(rayAngle)
    rayAngle = rayAngle % twopi
    if rayAngle < 0 then
        rayAngle = rayAngle + twopi
    end

    local right = (rayAngle > (twopi * 0.75) or rayAngle < (twopi * 0.25))
    local up = (rayAngle < 0 or rayAngle > pi)

    local wallType = 0;

    local angleSin = sin(rayAngle)
    local angleCos = cos(rayAngle)
    local dist = 0
    local xHit = 0
    local yHit = 0

    local texttureX
    local wallX
    local wallY

    --vertical run
    local slope = angleSin / angleCos

    local dXVer
    local dYVer
    local y
    local x
    if right then
        dXVer = 1
    else
        dXVer = -1
    end

    dYVer = dXVer * slope

    if right then
        x = ceil(player.x)
    else
        x = flr(player.x)
    end

    y = player.y + (x - player.x) * slope

    while (x >= 0 and x < mapWidth and y >= 0 and y < mapHeight)
    do
        local wallX
        local wallY
        if right then
            wallX = flr(x)
        else
            wallX = flr(x - 1)
        end

        wallY = flr(y)

            --wierd --check
            if (map[wallY+1][wallX+1] > 0) then
                local distX = x - player.x
                local distY = y - player.y

                dist = distX * distX + distY * distY
                wallType = map[wallY+1][wallX+1];
                -- skipping texture
                xHit = x
                yHit = y

                break
            end
        x = x + dXVer
        y = y + dYVer
    end


    --horizontal run
    local slope = angleCos / angleSin
    local dXHor
    local dYHor
--    local y
--    local x

    if up then
        dY = -1
    else
        dY = 1
    end

    dX = dY * slope
    if up then
        y = floor(player.y)
    else
        y = ceil(player.y)
    end

    x = player.x + (y - player.y) * slope

    while (x >= 0 and x < mapWidth and y >= 0 and y < mapHeight)
    do
        local wallX
        local wallY
        if right then
            wallY = floor(y - 1)
        else
            wallY = floor(y)
        end

        wallX = floor(x)

        -- why opposite?? YX?
        --    print "**"
        --        print(wallX)
        --    print "--"
        --        print(wallY)
        --    print "##"

        if not wallY or not wallX then
            --        print("her")
            --        print(wallX)
            --        print(wallY)
            print(map[wallY][wallX])
        end
        if (map[wallY+1][wallX+1] > 0) then
            local distX = x - player.x
            local distY = y - player.y

            local blockdist = distX * distX + distY * distY
            if not dist or blockdist < dist then
                dist = blockdist
                xHit = x
                yHit = y
                wallType = map[wallY+1][wallX+1];
            end
            break
        end
        x = x + dX
        y = y + dY
    end

    if dist then
        drawRay(xHit, yHit)
        -- render walls here
--        dist = sqrt(dist);
--        dist = dist * cos(player.rot - rayAngle);
--        local c
--        if(wallType == 1)
--            then
--            c = 8
--        elseif(wallType == 2)
--            then
--            c = 9
--        elseif(wallType == 3)
--            then
--            c = 3
--        elseif(wallType == 4)
--            then
--            c = 12
--        else
--            c = 13
--        end
--        render_walls(x,y, viewDist, dist, c)
    end
end

function render_walls(x,y, viewDist, dist, c)
    local h = 128
    local height = floor(viewDist / dist);
    local width = height * stripWidth;

    local lineHeight = floor(h / height);
--    local drawStart = -lineHeight / 2 + h / 2;
--    if(drawStart < 0)
--    then
--        drawStart = 0;
--    end
--    local drawEnd = lineHeight / 2 + h / 2;
--    if(drawEnd >= h)
--    then
--        drawEnd = h - 1;
--    end
     rectfill(x, y, x + width, y+height, c)

--     line(x, drawStart, x, drawEnd, color(c))

end

function drawRay(rayX, rayY)
    --how to draw?
    --still need to understand
    line(player.x * miniMapScale,
        player.y * miniMapScale,
        rayX * miniMapScale,
        rayY * miniMapScale, color(8)
)
end

function move()
    -- moveSpeed: step in map units each update dist/time
    -- speed : foward or backward
    local moveStep = player.speed * player.moveSpeed
    -- player dir 1 right and -1 left
    -- player ro speed: speed at which player can turn
    -- player rot:  current angle
    player.rot += (player.dir * player.rotSpeed)

    --unclear
--    while player.rot < 0
--    do
--        player.rot += twopi
--    end
--    while player.rot >= twopi
--    do
--        player.rot -= twopi
--    end

    local newX = player.x + cos(player.rot) * moveStep
    local newY = player.y + sin(player.rot) * moveStep

    if isBlocking(newX, newY) then
        return
    end

    player.x = newX
    player.y = newY
end

function updateMiniMap()
    line(player.x * miniMapScale,
        player.y * miniMapScale,
        (player.x + cos(player.rot) * 4) * miniMapScale,
        (player.y + sin(player.rot) * 4) * miniMapScale, color(7))
end

function isBlocking(x, y)
    if y < 0 or y >= mapHeight or x < 0 or x >= mapWidth then
        return true
    end
--needs better detection
    if map[flr(y)][flr(x)] > 0 then
        return true
    end
end


-- close but not precise -- check
function asin(x)
    if x < 0 then negate = 1 else negate = 0 end
    x = abs(x);
    ret =-0.0187293;
    ret *= x;
    ret += 0.0742610;
    ret *= x;
    ret -= 0.2121144;
    ret *= x;
    ret += 1.5707288;
    ret = 3.14159265358979 * 0.5 - sqrt(1.0 - x) * ret;
    return ret - 2 * negate * ret;
end

function test()
    for i = 1, 24 do
        for j = 1, 32 do
            print(map[i][j])
        end
    end
end



function floor(x)
    return flr(x)
end

--issues
function ceil(num)
    return flr(num + 0x0.ffff)
end