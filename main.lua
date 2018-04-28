-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Apr 2018
-- 
-- multiply the number
-----------------------------------------------------------------------------------------

local answer = display.newText( "", 1700, 770, native.systemFont, 100 )

local instruction1 = display.newText( "Enter two integer number: ", 1000, 200, native.systemFont, 120 )

local instruction2 = display.newText( " * ", 800, 800, native.systemFont, 120 )

local instruction3 = display.newText( " = ", 1500, 770, native.systemFont, 120 )

local number1TextField = native.newTextField( display.contentCenterX - 560 , display.contentCenterY , 350, 150)
number1TextField.id = "number 1"

local number2TextField = native.newTextField( display.contentCenterX + 100 , display.contentCenterY , 350, 150)
number2TextField.id = "number 2"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 700
enterButton.y = display.contentCenterY + 250
enterButton.id = "enter button"

local function Multiplication( event )
	-- body
	local numberUser1 = tonumber(number1TextField.text)
	local numberUser2 = tonumber(number2TextField.text)
	local additon = 0

	if (numberUser1 > 0) and (numberUser2 > 0) then
		repeat
			additon = additon + numberUser1
			numberUser2 = numberUser2 - 1
		until numberUser2 == 0
			answer.text = additon
	elseif (numberUser1 < 0 or numberUser2 < 0 ) then
		repeat
			additon = additon + (-numberUser1)
			numberUser2 = numberUser2 + 1
		until numberUser2 == 0
			answer.text = additon
	elseif (numberUser1 == 0 or numberUser2 == 0) then
		answer.text = additon
	end
end

enterButton:addEventListener("touch", Multiplication)