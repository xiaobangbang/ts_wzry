--require("TSLib")
local BB = require('tools')
local env = require("TAB_ENV")
--BB.print_r({122323,23234})

local cc = require("VAR_SERIALIZE")

local xx = cc.THIRD_CHARACTOR

local co = require("Colors")


--print(str1)

--toast(str1,3)
local common = require("COMMON_TOOLS")

--local ENV= require("TAB_ENV")

--mSleep(1000)
--toast(xx)
mSleep(1000)
toast( common.trim('    100   '))



if env.LUA_VERSION == "TOUCH" then
	open_app= runApp
	front_app = frontAppBid
	mmsleep = mSleep
	init_screen = init
	init_log = initLog
	wt_log= wLog
	close_log = closeLog
	multi_col = multiColor
	ltap = tap
	move2 = moveTo
	findcolor = findMultiColorInRegionFuzzy
	ttoast = toast
	unlock_device = unlockDevice
	is_device_lock = deviceIsLock
	getcolorr = getColor
	set_screen_light = setBacklightLevel
	get_screen_light = getBacklightLevel
	keep_screen = keepScreen

elseif env.LUA_VERSION == "XXT" then
	open_app= app.run
	close_app= app.close
	front_app = app.front_bid
	mmsleep = sys.msleep
	init_screen = screen.init
	wx_log= sys.log
	multi_col = screen.is_colors
	ltap = touch.tap
	move2 =xxtmoveto
	findcolor = screen.find_color
	ttoast = sys.toast
	unlock_device = device.unlock_screen
	is_device_lock = device.is_screen_locked
	getcolorr = screen.get_color
	set_screen_light = device.set_brightness
	get_screen_light = device.brightness
	keep_screen = screen.keep
	unkeep_screen = screen.unkeep
end
--log_file = "tianlong.log"
if env.LUA_VERSION == "TOUCH" then
	init_log(env.log_file, 1)
end	

function wwlog(msg)	
	if env.LOG_MODE ==true then 
		if env.LUA_VERSION == "TOUCH" then		
			wt_log(log_file,msg)
		elseif env.LUA_VERSION == "XXT" then
			wx_log(msg)
		end	
	end
	if env.DEBUG_MODE == true then
		nLog(msg)
	end
end


function shake_screen()
	local br = get_screen_light()
	mmsleep(200)
	for i = 1 ,30 do
		set_screen_light(1)
		mmsleep(200)
		set_screen_light(0)
		mmsleep(200)
	end
	set_screen_light(br)
end

--[[
List ={}
function List.new()
	return {first=0,last = -1 }
end

function List.pushfirst(list,value)
	local first = list.first -1
	list.first = first
	list[first] = value
end

function List.pushlast(list,value)
	local last = list.last +1
	list.last= last
	list[last] = value
end

function List.popfirst(list)
	local first = list.first
	if first > list.last then error("list is empty") end
	local value= list[first]
	list[first] = nil
	list.first= first +1
	return value
end

function List.getfirst(list)
	local first = list.first
	if first > list.last then error("list is empty") end
	local value= list[first]
	--list[first] = nil
	--list.first= first +1
	return value
end

function List.poplast(list)
	local last = list.last
	if list.first > last then error("list is empty") end
	local value = list[last]
	list[last]= nil
	list.last = last -1
	return value
end

function List.popList (list1,k1)
	if getListSize(list1) > 2 then
		for k,v in pairs(list1) do			
			local value= list1[k1]
			print(value)
			list1[k1] = nil

			if k1 == list1.last then
				local last = list1.last
				local value = list1[last]
				if list1.first ~= list1.last then
					list1.last = last -1
				end

			end

			if k1 == list1.first then
				local first = list1.first				
				local value= list1[first]				
				if list1.first ~= list1.last then
					list1.first= first +1
				end
			end
		end
	end
end

function  getListSize(list1)	
	return list1.last + 1
end	


]]--

function getClickXY(color_arr)
	local click_index = #color_arr
	local click_xy = color_arr[click_index] 
	local click_x = click_xy[1]
	local click_y = click_xy[2]
	return click_x,click_y
	-- body
end

function mrsleep(ss)
	local n1= getRandomNum(ss*0.3) 
	--nLog(ss+n1)
	mmsleep(ss+n1)
end


wwlog("sdfsdfsdf111")
--shake_screen()

local str1 =BB.table_to_str(co.func_list_xishi_map())
