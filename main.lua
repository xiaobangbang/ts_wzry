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
					if v.end_list then
						ret = "end_list"						
					end	
					if v.over_time then
						wwlog("over_time"..tostring(v.over_time))
						mmsleep(v.over_time * 1000)					
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
			wwlog(ret)		
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
			wwlog(ret)		
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
			wwlog(ret)		
		end
		mSleep(3000)
	end
end


function func_battle_pvc(...)
	while (true) do			
		local list1 = co.func_list_pvc()
		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret)		
		end
		if ret == "end_list" then
			break
		end
		mSleep(3000)
	end
end

function func_battle_pvc_auto_fight(...)
	while (true) do			
		mSleep(500)
		--判断是否死亡
		if multiColor({{  522,    7, 0xf8ecec},{  537,   12, 0xfcf6f6},{  588,   11, 0xf7f3f2},{  607,   11, 0xfefcfc},}) --死亡回放
		or 
		multiColor({{ 1018,  528, 0x4e5c62},{ 1024,  534, 0x4a5a61},{ 1046,  560, 0x2f4755},}) then --普攻武器变灰
			toast("已经死亡")
		else
			--如果进入到pvc主界面
			if multiColor({{ 1018,  533, 0xc8edf9},{ 1030,  537, 0xb0dbf4},{ 1046,  558, 0x76b5d9},}) then 
				--如果有敌人--顶部中间见红
				if multiColor({{  558,    7, 0xb8312b},{  560,    8, 0xc13631},{  558,   12, 0x8e2b2a},{  559,   14, 0x79292a},}) then
					tap(1046,  558)--普攻
				else --没有敌人，前进
					moveTowards(  137,  505,70,2000)	
					tap(1046,  558)--普攻

				end
				mSleep(1000)
			end
			--第二次判断是否死亡
			if multiColor({{  522,    7, 0xf8ecec},{  537,   12, 0xfcf6f6},{  588,   11, 0xf7f3f2},{  607,   11, 0xfefcfc},}) --死亡回放
			or 
			multiColor({{ 1018,  528, 0x4e5c62},{ 1024,  534, 0x4a5a61},{ 1046,  560, 0x2f4755},}) then --普攻武器变灰
				toast("已经死亡")
			else
				--红色血条-带蓝条-敌方英雄
				if multiColor({{  559,    8, 0xbe342d},{  559,   13, 0x791e1d},{  559,   22, 0x2378d1},}) 
				or 
				multiColor({{  558,    8, 0xc2352d},{  559,   12, 0x8e2824},{  558,   22, 0x2377d0},{  558,   24, 0x125fb9},}) 
				then
					toast("红色血条-带蓝条-地方英雄",1)
					--{{ 1032,  549, 0x6eaec0},{  847,  559, 0x11110e},{  910,  448, 0x482d13},{ 1037,  379, 0x270d08},}
					tap(1032,  549)
					mSleep(1000)
					tap(847,  559)
					mSleep(1000)
					tap(910,  448)
					mSleep(1000)
					tap(1037,  379)
					--地方防御塔和小兵	
				elseif multiColor({{  558,    7, 0xb8312b},{  560,    8, 0xc13631},{  558,   12, 0x8e2b2a},{  559,   14, 0x79292a},}) then
					toast("地方防御塔和小兵-用普攻",1)
					tap(787,  497)
					mSleep(200)
				else			
					--没有敌人，升级技能和装备
					toast("没有敌人，升级技能和装备",1)
					tap(974,  309) --优先学习第三个技能
					mSleep(200)
					tap(787,  497) --学习第一个技能
					mSleep(200)
					tap(855,  378)--学习第二个技能
					mSleep(200)
										
					tap(120,  259) --穿戴上面的装备，下面的装备暂不穿戴
					mSleep(200)
					--tap(117,  326)
					mSleep(200)
					tap(787,  497) --普攻
				end
			end
		end
	end
end

function func_go_back(...)
	while (true) do	
		--toast("sub thread 2 over",1)
		local list1 = co.func_list_go_back()

		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret)		
		end
		mSleep(3000)
	end
end


function func_free_rune(...)
	while (true) do			
		local list1 = co.func_list_free_rune()
		local ret = task_by_loop2(list1)
		if ret ~= nil then
			wwlog(ret)		
		end
		mSleep(3000)
	end
end

function func_main_thread_call_back()
	dialog("func_main_thread_call_back", 1)
	--mrsleep(1000)
end

--local stage=nil
local logon_thread_on =  false;adventure_thread_on = false;popup_thread_on = false;
local go_back_thread_on = false;
local pvc_thread_on = false;
local pvc_auto_fight_thread_on = false;
local adventure_time_flag= false;pvc_time_flag= false;
local sub_thread_logon = nil;sub_thread_popup = nil;sub_thread_adventure = nil;
local sub_thread_goback = nil;sub_thread_rune = nil;sub_thread_pvc = nil;sub_thread_pvc_auto_fight = nil;

--local adventure_hours={start_hour=8,start_min=25,stop_hour=8,stop_min=43}

--local pvc_hours={start_hour=00,start_min=00,stop_hour=0,stop_min=20}

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
				sub_thread_logon = thrd.createSubThread(function()
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
				thrd.setTimeout(45000,sub_thread_logon)
			end 

			---[[
			if popup_thread_on == false then 
				sub_thread_popup = thrd.createSubThread(function()	
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
			--thrd.setTimeout(30000,sub_thread_popup)

			--thrd.wait(sub_thread_id_2)
			if check_activity(env.adventure_hours) then
				adventure_time_flag = true
				wwlog("adventure_time_flag = true")
			else
				adventure_time_flag = false
				if sub_thread_adventure ~= nil then
					thrd.stop(sub_thread_adventure)
					sub_thread_adventure=nil
					go_back_thread_on = true
					wwlog("thrd.stop(sub_thread_adventure)")
				end
				wwlog("adventure_time_flag = false")
			end

			if adventure_thread_on == false and adventure_time_flag ==true and sub_thread_adventure == nil then 
				sub_thread_adventure = thrd.createSubThread(function()
						adventure_thread_on =  true
						wwlog("before func_adventure()")
						func_adventure()						
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

			if check_activity(env.pvc_hours) then
				pvc_time_flag = true
				wwlog("pvc_time_flag = true")
			else
				pvc_time_flag = false
				if sub_thread_pvc ~= nil then
					thrd.stop(sub_thread_pvc)
					sub_thread_pvc=nil
					go_back_thread_on = true
					wwlog("thrd.stop(sub_thread_pvc)")
				end
				wwlog("pvc_time_flag = false")
			end

			if pvc_thread_on == true and pvc_time_flag ==true and sub_thread_pvc == nil then 
				sub_thread_pvc = thrd.createSubThread(function()
						pvc_thread_on =  false						
						wwlog("before func_battle_pvc()")
						func_battle_pvc()						
					end
					,{
						callBack = function()
							--协程结束会调用，不论是错误、异常、正常结束
							--mrsleep(1000)
							pvc_auto_fight_thread_on =  true
							wwlog("pvc_auto_fight_thread_on =  true")
							wwlog("428 协程结束了", 0)					
						end,
						errorBack = function(err)
							--协程错误结束，一般是引用空调用,err是字符串
							wwlog("432 协程错误了:"..err,0)
						end,
						catchBack = function(exp)
							--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因							
							wwlog("436 协程异常了\n"..json.encode(exp),0)
						end
					}
				)
			end

			--if true then
				if pvc_auto_fight_thread_on == true  then 
				sub_thread_pvc_auto_fight = thrd.createSubThread(function()
						pvc_auto_fight_thread_on =  false
						wwlog("before func_battle_pvc_auto_fight()")
						func_battle_pvc_auto_fight()						
					end
					,{
						callBack = function()
							--协程结束会调用，不论是错误、异常、正常结束
							--mrsleep(1000)
							wwlog("518 协程结束了", 0)					
						end,
						errorBack = function(err)
							--协程错误结束，一般是引用空调用,err是字符串
							wwlog("522 协程错误了:"..err,0)
						end,
						catchBack = function(exp)
							--协程异常结束,异常是脚本调用了throw激发的,exp是table，exp.message是异常原因							
							wwlog("526 协程异常了\n"..json.encode(exp),0)
						end
					}
				)
			end


			if go_back_thread_on == true then 
				sub_thread_goback = thrd.createSubThread(function()
						go_back_thread_on =  false
						wwlog("before func_go_back()")
						func_go_back()						
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
				pvc_thread_on = true --进入主页之后，才开启pvc模式
				if sub_thread_goback ~= nil then
					thrd.stop(sub_thread_goback)
					sub_thread_goback = nil
					wwlog("thrd.stop(sub_thread_goback)")
				end
				if sub_thread_rune == nil then 
					sub_thread_rune = thrd.createSubThread(function()

							wwlog("before func_free_rune()")
							func_free_rune()							
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
					thrd.setTimeout(30000,sub_thread_rune)
				end

				if sub_thread_pvc_auto_fight ~= nil then
					sub_thread_pvc_auto_fight = nil
					thrd.stop(sub_thread_pvc_auto_fight)
					wwlog("thrd.stop(sub_thread_pvc_auto_fight)")
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


