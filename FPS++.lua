--[[
Script name : FPS++ 
-------------------
Version 5.0
-------------------
True = Enabled // False = Disabled

Timerwait = 13 Bad PC / 7 +- PC / 5 Good PC (This script cant exec in loading)
----------------------------------

_What this scripts will do?
    
This script contains 9 scripts
    6 FPS Booster
    1 FPS Unlocker (Simple code)
    1 Show FPS
    1 Better Graphics 

None of the scripts are made by me, I just put them together and made a very useful pack

-----------------------------------------------------------------------------------------

FPS Unlocker will only work if Synapse FPS Unlocker is enabled
(Maybe the FPS Unlocker will work only on synapse)

When you exec it your game will freeze for 3 seconds

You cant use FPS Booster and Better Graphics at the same time

]]


-- Settings 

local better_graphics = false -- This scripts will give to you the best graphics possible
local medium_fpsboost = false -- Medium FPS Bosster (This give color and other things for you)
local ultra_fpsboost = true -- Ultra FPS Booster (Max FPS Possible)
local FPSUnlocker = {
    Enabled = true,
    SetFPSLimit = 20 -- Set your FPS Limit, To this work you need to enable the Synapse FPS Unlocker
}
local ShowFPS = true -- Show the FPS on screen
local timerwait = 7 -- 13 Bad PC / 7 +- PC / 5 Good PC
local randomtimer = 3 -- Just a timer to help some ppl

--[[

Below is the scripts 

]]

wait(timerwait)

print("Script FPS++ Actived")
print("")
print("-----//FPS Options//-----")

if ShowFPS == true then
    loadstring(game:HttpGet("https://pastebin.com/raw/NM5gGMCy"))()
    print("Show FPS : On")
elseif ShowFPS == false then
    print("Show FPS : Off")
end

if FPSUnlocker.Enabled == true then
    setfpscap(FPSUnlocker.SetFPSLimit)
    print("FPSUnlocker : On /", FPSUnlocker.SetFPSLimit, 'Is your new fps limit')
elseif FPSUnlocker.Enabled == false then
    print("FPSUnlocker : Off")
end

if better_graphics == true and medium_fpsboost == false and ultra_fpsboost == false then
    loadstring(game:HttpGet(('https://pastebin.com/raw/p1Jc1imF'),true))()
    print("Better Graphics : On")
    print("Medium FPSBooster : Off")
    print("Ultra FPSBooster : Off")
elseif medium_fpsboost == true and better_graphics == false and ultra_fpsboost == false then
    loadstring(game:HttpGet("https://pastebin.com/raw/AS0QK4na"))()
    print("Medium FPSBooster : On")
    print("Ultra FPSBooster : Off")
    print("Better Graphics: Off")
elseif ultra_fpsboost == true and better_graphics == false and medium_fpsboost == false then
    loadstring(game:HttpGet("https://pastebin.com/raw/vXVeJQwr"))()
    print("Ultra FPSBooster : On")
    print("Better Graphics : Off")
    print("Medium FPSBooster : Off")
elseif better_graphics == false and ultra_fpsboost == false and medium_fpsboost == false then
    local randomtmr = 3
    while randomtmr > 0 do
        print("--------//Error//--------\n")
        wait(1)
        print("\n\nNo Options!\n\nNo graphics or booster options were selected\n\n")
        game.StarterGui:SetCore("SendNotification", {
           Title = "No options!";
           Text = "No graphics or booster options were selected";
           Icon = "";
           Duration = 10;
        })
        randomtmr = randomtmr - 1
    end
else
    print("--------//Error//--------\n")
    if better_graphics == true then
        local bgistrue = "Error : Better Graphics is enabled\n"
        print(bgistrue)
    end
    if medium_fpsboost == true then
        local mfpsb = "Error : Medium FPSBooster is enabled\n"
        print (mfpsb)
    end
    if ultra_fpsboost == true then
        local ufpsb = "Error : Ultra FPS Booster is enabled\n"
        print(ufpsb)
    end
    print("This code can't exec the Ultra or medium booster/better graphics at the same time")
    while randomtimer > 0 do
        wait(1)
        game.StarterGui:SetCore("SendNotification", {
           Title = "Wrong options!";
           Text = "OPEN THE CONSOLE FOR MORE INFO (F9)";
           Icon = "";
           Duration = 10;
        })
        randomtimer = randomtimer - 1
    end
end

-- End
