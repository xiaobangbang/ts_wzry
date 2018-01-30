require("TSLib")
local ts = require("ts")--使用扩展库前必须插入这一句
local json = ts.json--使用JSON 模块前必须插入这一句

local thrd = require('thread')
local env = require("TAB_ENV")
local co = require("Colors")
local common = require("COMMON_TOOLS")


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
	is_running = appIsRunning
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
	is_running = app.is_running
end

init_screen(1)
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

function getClickXY(color_arr)
	local click_index = #color_arr
	local click_xy = color_arr[click_index] 
	local click_x = click_xy[1]
	local click_y = click_xy[2]
	return click_x,click_y
	-- body
end

function mrsleep(ss)
	local n1= common.getRandomNum(ss*0.3) 
	nLog(ss+n1)
	mmsleep(ss+n1)
end

function task_by_foo2(list1)
	local ret = nil
	for k,v in pairs (list1) do	
		if k ~= 'first' and k ~= 'last' then
			local colors
			if v.color ~= nil then
				colors = {v.color}
			else
				colors = v.colors
			end
			for k1,v1 in pairs(colors )	do 
				if multi_col(v1) then
					wwlog(v.logmsg)
					--[[
					if list1.first <= list1.last then
						List.popfirst(list1)
					end
					--]]
					--[[
					if v.once ~= nil then
						List.popList(list1,k)
					end
					--]]
					if v.foo2 ~= nil then
						return v.foo2()		
					end
				end				
			end				
		end		
	end
	return ret
end

function dosomething2(v_color,v)

	if v.click_xy ~= nil then

		local click_x,click_y = getClickXY({v.click_xy})	

		ltap(click_x,  click_y)
	else
		if v.foo ~= nil then
			v.foo()		
		else
			local click_x,click_y = getClickXY(v_color)	
			ltap(click_x,  click_y)
		end	
	end

end

function task_by_loop2(list1)
	local ret = nil	
	for k,v in pairs (list1) do			
		if k ~= 'first' and k ~= 'last' then			
			local colors
			if v.color ~= nil then
				colors = {v.color}
			else
				colors = v.colors
			end
			for k1,v1 in pairs(colors )	do
				if multi_col(v1) ==true then
					--if multi_col({	{  620,  574, 0xffffff},	{  613,  579, 0xf8f8f8},	{  630,  575, 0xfdfdfd},	{  658,  576, 0xffffff},}) then 
					--dialog("141", 0)						
					wwlog(v.logmsg)
					if v.wait ~=nil then
						ttoast(v.wait)
						mmsleep(v.wait *1000)
					end					
					dosomething2(v1,v)
					if v.once ~= nil then
						List.popList(list1,k)
					end
					if v.end_color then
						ret = "end_color"						
					end	
					if v.overtime then
						wwlog("overtime"..tostring(v.overtime))
						mmsleep(v.overtime * 1000)					
					end	
					break
				end				
			end	
			if ret == "end_color" then
				break
			end
		end		
	end
	return ret
end

mrsleep(1000)
if is_running("com.tencent.smoba")==1 then
	wwlog("游戏正在运行")
else
	open_app("com.tencent.smoba")
	mrsleep(10000)	
end

---[[
if front_app() == "com.tencent.xin" then
	wwlog("74 微信程序ing...")
elseif  front_app() ~= "com.tencent.smoba" then	
	open_app("com.tencent.smoba")
	wwlog("game start")
	mrsleep(10000)		
end
--]]

function func_get_stage(...)
	local ret = nil
	--while (true) do			
	local list1 = co.func_list_get_stage()		
	ret = task_by_foo2(list1)
	--if ret ~= nil then 			break			end
	mSleep(3000)
	--end
	return ret
end

function func_logon(...)
	while (true) do			
		local list1 = co.func_list_login()		
		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret, 2)		
		end
		mSleep(3000)
	end
end

function func_popup1(...)
	while (true) do	
		--toast("sub thread 2 over",1)
		local list1 = co.func_list_popup()

		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret, 2)		
		end
		mSleep(3000)
	end
end

function func_adventure(...)
	while (true) do	
		--toast("sub thread 2 over",1)
		local list1 = co.func_list_adventure()

		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret, 2)		
		end
		mSleep(3000)
	end
end

function func_go_back(...)
	while (true) do	
		--toast("sub thread 2 over",1)
		local list1 = co.func_list_go_back()

		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret, 2)		
		end
		mSleep(3000)
	end
end


function func_free_rune(...)
	while (true) do			
		local list1 = co.func_list_free_rune()
		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret, 2)		
		end
		mSleep(3000)
	end
end

function func_main_thread_call_back()
	dialog("func_main_thread_call_back", 1)
	--mrsleep(1000)
end

--local stage=nil
local logon_thread_on =  false;adventure_thread_on = false;popup_thread_on = false;go_back_thread_on = false
local adventure_time_flag= false;
local sub_thread_1 = nil;sub_thread_2 = nil;sub_thread_3 = nil;sub_thread_4 = nil;sub_thread_5 = nil;

local adventure_hours={start_hour=15,start_min=25,stop_hour=22,stop_min=48}

function check_activity (activity_hours) 
	local ret = false
	local tt=os.date("*t",os.time())
	local time_start = os.time{year = tt.year, month = tt.month, day = tt.day, hour = activity_hours.start_hour, min = activity_hours.start_min};
	local time_stop = os.time{year = tt.year, month = tt.month, day = tt.day, hour = activity_hours.stop_hour, min = activity_hours.stop_min};
	local time_cur = os.time()

	if time_cur >=time_start and time_cur <= time_stop then
		ret = true
	end
	return ret
end 

--主线程
local thread_id = thrd.create(function()
		while true do 
			--创建子协程--登陆
			if logon_thread_on ==false then 
				sub_thread_1 = thrd.createSubThread(function()
						logon_thread_on =  true
						wwlog("before func_logon")
						func_logon()
						--thread.throw("协程抛出异常")
					end
					,{
						callBack = function()
							wwlog("239 协程结束了", 0)					
						end,
						errorBack = function(err)
							--协程错误结束，一般是引用空调用,err是字符串
							wwlog("243 协程错误了:")
							wwlog(err,0)
						end,
						catchBack = function(exp)
							--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因					
							wwlog("250 协程异常了\n"..json.encode(exp),0)
						end
					}
				)
				thrd.setTimeout(45000,sub_thread_1)
			end 

			---[[
			if popup_thread_on == false then 
				sub_thread_2 = thrd.createSubThread(function()	
						popup_thread_on = true
						func_popup1()						
					end
					,{
						callBack = function()
							--协程结束会调用，不论是错误、异常、正常结束
							--mrsleep(1000)
							wwlog("269 协程结束了", 0)					
						end,
						errorBack = function(err)
							--协程错误结束，一般是引用空调用,err是字符串
							wwlog("274 协程错误了:"..err,0)
						end,
						catchBack = function(exp)
							--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因						
							wwlog("279 协程异常了\n"..json.encode(exp),0)
						end
					}
				)
			end 
			--thrd.setTimeout(30000,sub_thread_2)

			--thrd.wait(sub_thread_id_2)
			if check_activity(adventure_hours) then
				adventure_time_flag = true
				wwlog("adventure_time_flag = true")
			else
				adventure_time_flag = false
				if sub_thread_3 ~= nil then
					thrd.stop(sub_thread_3)
					sub_thread_3=nil
					go_back_thread_on = true
					wwlog("thrd.stop(sub_thread_3)")
				end
				wwlog("adventure_time_flag = false")
			end

			if adventure_thread_on == false and adventure_time_flag ==true then 
				sub_thread_3 = thrd.createSubThread(function()
						adventure_thread_on =  true
						wwlog("before func_adventure()")
						func_adventure()
						--因为sub thread 2比parent thread运行时间长，所以以下代码实际执行不到
					end
					,{
						callBack = function()
							--协程结束会调用，不论是错误、异常、正常结束
							--mrsleep(1000)
							wwlog("280 协程结束了", 0)					
						end,
						errorBack = function(err)
							--协程错误结束，一般是引用空调用,err是字符串
							wwlog("284 协程错误了:"..err,0)
						end,
						catchBack = function(exp)
							--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因							
							wwlog("290 协程异常了\n"..json.encode(exp),0)
						end
					}
				)
			end
			
			if go_back_thread_on == true then 
				sub_thread_4 = thrd.createSubThread(function()
						go_back_thread_on =  false
						wwlog("before func_go_back()")
						func_go_back()
						--因为sub thread 2比parent thread运行时间长，所以以下代码实际执行不到
					end
					,{
						callBack = function()
							--协程结束会调用，不论是错误、异常、正常结束
							--mrsleep(1000)
							wwlog("401 协程结束了", 0)					
						end,
						errorBack = function(err)
							--协程错误结束，一般是引用空调用,err是字符串
							wwlog("405 协程错误了:"..err,0)
						end,
						catchBack = function(exp)
							--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因							
							wwlog("409 协程异常了\n"..json.encode(exp),0)
						end
					}
				)
			end
			
			local stage=func_get_stage()
			if stage =="home_page" then 
				wwlog("back to homepage")
				if sub_thread_4 ~= nil then
					thrd.stop(sub_thread_4)
					sub_thread_4 = nil
					wwlog("thrd.stop(sub_thread_4)")
				end
				if sub_thread_5 == nil then 
				sub_thread_5 = thrd.createSubThread(function()
						
						wwlog("before func_free_rune()")
						func_free_rune()
						--因为sub thread 2比parent thread运行时间长，所以以下代码实际执行不到
					end
					,{
						callBack = function()
							--协程结束会调用，不论是错误、异常、正常结束
							--mrsleep(1000)
							wwlog("445 协程结束了", 0)					
						end,
						errorBack = function(err)
							--协程错误结束，一般是引用空调用,err是字符串
							wwlog("449 协程错误了:"..err,0)
						end,
						catchBack = function(exp)
							--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因							
							wwlog("453 协程异常了\n"..json.encode(exp),0)
						end
					}
				)
				thrd.setTimeout(30000,sub_thread_5)
				end
				
			end 

			--获取当前时间，并判断是否有定时任务
			--[[
			while true do
				mSleep(3000)
				stage=func_get_stage()
				local tt=os.date("*t",os.time())
				local cur_time = os.date("%Y-%m-%d %H:%M:%S",os.time())
				wwlog("main thread:"..cur_time, 1)
			end
			--]]
			mrsleep(1000)
		end 
		return 200
	end

	,{		
		callBack = function()			
			func_main_thread_call_back()				
		end,

		errorBack = function(err)
			--协程错误结束，一般是引用空调用,err是字符串
			wwlog("219 协程错误了:"..err,0)
		end,

		catchBack = function(exp)
			--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因		
			wwlog("225 协程异常了\n"..json.encode(exp),0)
		end		
	}	
)

--thrd.setTimeout(60000,thread_id)
--等待所有协程结束
--thrd.waitAllThreadExit()

---[[
local ok,ret = thrd.wait(thread_id)
if ok==true then
	--正常结束，ret是协程函数的返回值,这里ret=100
	toast("wait ok,ret is "..tostring(ret))
else
	toast("wait not ok.....,ret is "..tostring(ok),2)

end
--]]


