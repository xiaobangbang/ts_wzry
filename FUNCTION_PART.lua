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
				if multi_col(v1) then
					ret = "in"					
					wwlog(v.logmsg)
					dosomething2(v1,v)
					mrsleep(SLEEP_TIME)
					if v.following_function then
						ret = "following_function"						
					end	
					if v.end_color then
						ret = "end_color"						
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
					if v.foo2 ~= nil then
						return v.foo2()		
					end
				end				
			end				
		end		
	end
	return ret
end

function task_by_order2(list1)
	local ret = nil		
	if list1.first <= list1.last then
		local v = List.getfirst(list1)			
		local colors
		if v.color ~= nil then
			colors = {v.color}
		else
			colors = v.colors
		end
		for k1,v1 in pairs(colors )	do 
			if multi_col(v1) then
				ret = "in"				
				wwlog(v.logmsg)
				dosomething2(v1,v)
				mrsleep(SLEEP_TIME)					
				if v.end_color then
					ret = "end_color"						
				end
				if list1.first <= list1.last then
					List.popfirst(list1)
				end
				break
			end			
		end		
	end
	return ret
end

function check_popup()
	while (true) do			
		wwlog(debug.getinfo(1).currentline..":清理物品、装备、弹窗")				
		local ret = task_by_loop2(list_popup)
		if (ret ==nil  )  then
			wwlog("没有弹窗了，退出while")
			break
		end			
		mrsleep(SLEEP_TIME)
	end
end

function close_all_window()
	while (true) do			
		wwlog(debug.getinfo(1).currentline..":关闭所有窗口，准备退出当前角色")				
		local ret = task_by_loop2(list13)
		if (ret ==nil  )  then
			wwlog("没有窗口了")
			break
		end			
		mrsleep(SLEEP_TIME)
	end
end

function func_click_menu()
	while (true) do		
		wwlog(debug.getinfo(1).currentline..":点击功能菜单")				
		local ret = task_by_order2(list_func_menu)	
		if  ret =="end_color"   then
			wwlog("点击功能菜单 退出while")									
			break
		end		
		mrsleep(SLEEP_TIME)
	end	
	nLog("func_click_menu exit")
end

function func_click_setup()
	while (true) do
		--if next_charactor_switch == true then
		wwlog(debug.getinfo(1).currentline..":点击设置按钮")				
		local ret = task_by_order2(list_setup)	
		if  ret =="end_color"   then
			wwlog("点击设置按钮 退出while")									
			break
		end
		--end
		mrsleep(SLEEP_TIME)
	end

	if VAR_LIST1.FIRST_CHARACTOR =="NEW" then
		VAR_LIST1.FIRST_CHARACTOR = "FINISHED"
	elseif VAR_LIST1.SECOND_CHARACTOR =="NEW" then
		VAR_LIST1.SECOND_CHARACTOR ="FINISHED"
	elseif VAR_LIST1.THIRD_CHARACTOR =="NEW" then
		VAR_LIST1.THIRD_CHARACTOR ="FINISHED"
	elseif VAR_LIST1.FOUTH_CHARACTOR =="NEW" then
		VAR_LIST1.FOUTH_CHARACTOR ="FINISHED"
	end	
	record_var1(VAR_LIST1,XXT_PHONE_PATH.."VAR_SERIALIZE.lua")
	nLog("func_click_setup exit")
end

--领取邮件


--找回
function func_find_back ()
	while (true) do
		if find_back_switch == true then
			wwlog(debug.getinfo(1).currentline..":找回")				
			local ret = task_by_order2(list_find_back)
			if ( ret =="end_color" )  then
				wwlog("找回，下拉到最底部，skip while" )
				func_find_back_finished = true
				break					
			end
		end
		mrsleep(SLEEP_TIME)
	end
	nLog("func_find_back exit")
end


function func_open_bag()
	while (true) do
		if bag_switch == true  then
			wwlog(debug.getinfo(1).currentline..":打开背包")				
			local ret = task_by_order2(list_bag)
			if ret =="in"  then
				xishi_switch = true
				bag_switch = false
			elseif	ret =="end_color"   then
				next_charactor_switch = true
				break
			end
			if next_charactor_switch == true then
				break
			end
		end
		mrsleep(SLEEP_TIME)
	end
	func_open_bag_finished = true
	nLog("opend bag thread exit")
end


function func_find_xishi()
	while (true) do
		if xishi_switch == true then
			--wwlog(debug.getinfo(1).currentline..":找寻稀世藏宝图")
			local ret = task_by_order2(list_xishi_map)	
			bag_switch = true
			xishi_switch = false
			if ret =="in"   then				
				next_charactor_switch = true
				break
			end			
			if next_charactor_switch == true then
				break
			end
		end
		mrsleep(SLEEP_TIME)
	end
	func_find_xishi_finished = true
	nLog("func_find_xishi exit")
end


function func_datu ()
	local time1 = os.time()
	while (true) do
		if datu_switch == true then
			wwlog(debug.getinfo(1).currentline..":逞凶打图")				
			local ret = task_by_loop2(list_chengxiong_datu)
			if ret =="end_color"   then
				wwlog("找回打图结束，skip while" )			
				break					
			end
			if os.time() - time1 >20 then
				time1 = os.time()
				ltap(1082,   66)
				wwlog("找回打图超时...................，skip while" )
				break
			end
		end
		mrsleep(SLEEP_TIME)
	end
	func_datu_finished = true	
	nLog("func_datu exit")
end


function func_welfare_icon ()
	while (true) do
		if welfare_switch == true then
			wwlog(debug.getinfo(1).currentline..":点击福利图标")				
			local ret = task_by_order2(list_welfare_icon)	

			if ret == "end_color" then
				wwlog("退出while 循环")
				func_welfare_icon_finished = true

				break
			end
		end
		mrsleep(SLEEP_TIME)
	end
	wwlog("func_welfare_icon exit")
end

function func_monitor_popup()
	while (true) do
		if popup_switch == true  then --领取邮件之后，接着领取福利，然后在使用/领用奖励
			--wwlog(debug.getinfo(1).currentline..":处理物品、装备、弹窗")				
			local ret = task_by_loop2(list_popup)				
		end
		mrsleep(SLEEP_TIME)
	end
end

function func_training()
	local current_thread_id = thread.current_id()	
	wwlog(debug.getinfo(1).currentline..":登录成功之后，进入游戏:thread.current_id:"..tostring( current_thread_id))				
	while(true) do	
		if training_switch ==true then			
			mrsleep(1000)			
			local ret = task_by_order2(list_training)	
			if ret == "end_color" then
				break
			end
		end
		mrsleep(SLEEP_TIME*2)			
	end
	nLog("func_training exit")
end


function func_home_page()	
	local current_thread_id = thread.current_id()	
	while(true) do 
		if main_task_switch ==true and TAB_ENV.MAIN_TASK_SWITCH ==true then				
			wwlog(debug.getinfo(1).currentline..":游戏主界面:thread.current_id:"..tostring( current_thread_id))					
			local ret =task_by_loop2(list_home)											
		end
		mrsleep(SLEEP_TIME)
	end
end

function func_after_login()
	while (true) do	
		wwlog(debug.getinfo(1).currentline.."in:func_after_login")
		local ret = task_by_foo2(list_after_login)							
		if ret == "training" then
			if training_task <0 then
				training_task = thread.timer_start(5,function() func_training() end)
			end
			break
		--[[
		elseif ret == "player_in" then
			wwlog(debug.getinfo(1).currentline..":player_in")
			break
		--]]	
		elseif ret == "welfare_window" then
			ltap(1082,   64)
			wwlog(debug.getinfo(1).currentline..":关闭弹窗，领取邮件作为第一个任务开始")
			break
		end 
		mrsleep(SLEEP_TIME)
	end
	nLog("after  func_after_login while")
end
