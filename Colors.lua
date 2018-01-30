
page_login_entrance={}
page_login_entrance.button_wx={}
page_login_entrance.button_wx.colors={{{  500,  504, 0x30be1a},{  486,  519, 0xffffff},{  472,  510, 0xb3dd61},{  516,  508, 0xffffff},{  506,  527, 0x17b413},}}
page_login_entrance.button_wx.click_xy={506,  527}
page_login_entrance.button_wx.logmsg="选择微信登陆"


--page_login_entrance={}
page_login_entrance.accept_licence={}
page_login_entrance.accept_licence.colors={{{  541,  493, 0xde9f2b},{  545,  501, 0xffffff},{  561,  500, 0xffffff},{  580,  494, 0xfcfcfc},{  570,  509, 0xde9925},}}
--page_login_entrance.accept_licence.click_xy={506,  527}
page_login_entrance.accept_licence.logmsg="用户协议-接受"

--page_login_entrance={}
page_login_entrance.new_version_update={}
page_login_entrance.new_version_update.color={
	{  767,  557, 0x146eae},
	{  776,  565, 0x1a8ac6},
	{  770,  572, 0x20a4dd},
	{  770,  583, 0x1c95d7},	
}
page_login_entrance.new_version_update.click_xy={634,  576}
page_login_entrance.new_version_update.overtime=60
page_login_entrance.new_version_update.logmsg="版本更新公告"




--page_login_entrance={}
page_login_entrance.back_home={}
page_login_entrance.back_home.colors={{{   64,   15, 0x0ed1e5},{   84,   24, 0x1ba9ca},{   85,   35, 0x27bbe1},{   54,   44, 0x1face0},{   63,   32, 0x121a2b},}}
page_login_entrance.back_home.logmsg="登陆游戏过程中点击多了，回到主界面"

page_login_entrance.get_location={}
page_login_entrance.get_location.colors={{{  694,  394, 0x007aff},{  697,  408, 0x007aff},{  708,  400, 0x007aff},{  709,  414, 0x007aff},}}
page_login_entrance.get_location.logmsg="王者荣耀使用当前位置"


page_login_entrance.sevendays_logon={}
page_login_entrance.sevendays_logon.colors={{{  661,   84, 0xffffff},{  642,   95, 0xffffff},{  611,   98, 0xffffff},{  974,   88, 0x38cdea},{ 1022,  569, 0xe5a61b},}}
page_login_entrance.sevendays_logon.logmsg="七天累计登陆-点击领取"
--[[
page_login_entrance.sevendays_logon.foo= function ()  
	ltap(1022,  569) --点击领取
	mmsleep(5000)
	ltap(974,   88) --点击关闭X	
end
--]]
page_adventure={}
page_adventure.adventure_mode={}
page_adventure.adventure_mode.colors={{{  902,  482, 0xeeeae5},{  938,  486, 0xe4ded2},{  958,  480, 0xededed},{  978,  482, 0xdad4cd},}}
page_adventure.adventure_mode.logmsg="冒险模式"


--page_adventure={}
page_adventure.challenge_mode={}
page_adventure.challenge_mode.colors={{{  539,  488, 0xffffff},{  177,   27, 0xffffff},{  225,   32, 0xfefefe},{  558,  498, 0xf6fbff},{  571,  501, 0xffffff},}}
page_adventure.challenge_mode.logmsg="挑战模式"

page_adventure.next_step={}
page_adventure.next_step.colors={{{   55,   15, 0x0ecde3},{   69,   15, 0x0dcde2},{  917,  572, 0x37a2d7},{  924,  573, 0xffffff},{  957,  572, 0xffffff},}}
page_adventure.next_step.logmsg="选择关卡，点击下一步"

page_adventure.break_through={}
page_adventure.break_through.colors={{{   57,   15, 0x0ecee3},{  834,  536, 0xe5a129},{  840,  538, 0xffffff},{  860,  542, 0xffffff},{  887,  538, 0xffffff},}}
page_adventure.break_through.logmsg="开始闯关"

page_adventure.auto_fighting={}
page_adventure.auto_fighting.colors={{{ 1047,   33, 0x27aed9},{ 1054,   34, 0x24aed8},{ 1067,   33, 0x2baed9},{ 1058,   39, 0x2090be},{ 1059,   33, 0x13769a},}
	,{
	{ 1047,   34, 0x208eb3},
	{ 1058,   40, 0x1b7a9f},
	{ 1064,   33, 0x1c8eb1},
	{ 1056,   21, 0xbfc4c5},
}
}
page_adventure.auto_fighting.logmsg="自动按钮"

page_adventure.anykey_go_on={}
page_adventure.anykey_go_on.colors={{{  490,  601, 0xffffff},{  507,  602, 0xffffff},{  498,  593, 0xffffff},{  527,  594, 0xffffff},{  553,  602, 0xffffff},}}
page_adventure.anykey_go_on.logmsg="点击屏幕继续"

page_adventure.once_more={}
page_adventure.once_more.colors={{{  889,  574, 0xdf9829},{  900,  575, 0xffffff},{  900,  585, 0xffffff},{  932,  582, 0xffffff},{  948,  581, 0xffffff},}}
page_adventure.once_more.logmsg="再次挑战"

page_adventure.go_back={}
page_adventure.go_back.colors={{
	{   56,   15, 0x0ecfe4},
	{   78,   18, 0x11bbd5},
	{   81,   39, 0x28c6eb},
	{   40,   44, 0x249eda},
}}
page_adventure.go_back.logmsg="返回"


page_main_thread={}
page_main_thread.home_page={}
page_main_thread.home_page.colors={{{  940,   26, 0x1e8cc5},{  940,   20, 0x21a2da},{  996,   20, 0x2da7df},{  997,   38, 0x1d8fc7},{  237,   27, 0xfff5c0},{  237,   15, 0xfff9c5},}}
page_main_thread.home_page.logmsg="判断是否是游戏主界面"
page_main_thread.home_page.foo2= function()
		return "home_page"
	end
page_main_thread.home_page.wait=10 --等待10秒再多点取色判断
--主页判断
--
page_popup={}
page_popup.new_version_update={}
page_popup.new_version_update.color={{  931,   85, 0x30e4f4},{  949,   87, 0x2bcae2},{  947,   99, 0x2db9e5},{  938,   93, 0x32cee9},}
page_popup.new_version_update.logmsg="版本更新公告"


page_popup.tips_ok1={}		
page_popup.tips_ok1.color={
	{  548,  190, 0x381e07},
	{  582,  188, 0x391f08},
	{  543,  417, 0xeabf6c},
	{  571,  419, 0xfef7d4},
}
page_popup.tips_ok1.logmsg="弹出提示信息"

page_popup.notice_ok1={}		
page_popup.notice_ok1.colors = {
	{
		{   74,  119, 0xe2bf77},
		{   77,  171, 0xc69953},
		{  544,  521, 0xe9bd6a},
		{  568,  526, 0xe4ab52},
	},
	{
		{   71,  121, 0xe2b977},
		{   78,  170, 0xc69b55},
		{  541,  521, 0xecbf6b},
		{  564,  525, 0xfcf4d1},
	}
}
page_popup.notice_ok1.logmsg="公告，点击确定"		



page_popup.close_window1={}		
page_popup.close_window1.color = {{  931,   86, 0x31e4f3},{  949,   87, 0x2bcae2},{  948,  102, 0x2ab6e7},{  940,   94, 0x33c9e7},}
page_popup.close_window1.logmsg="活动窗口1，点击关闭"

page_popup.close_window2={}		
page_popup.close_window2.color = {{  932,   85, 0x2bc8ce},{  947,   87, 0x28b6c2},{  948,  101, 0x259fc3},{  940,   94, 0x2eb1c3},}
page_popup.close_window2.logmsg="活动窗口2，点击关闭"

page_popup.close_window3={}		
page_popup.close_window3.color = {{  968,  108, 0x30e4f3},{  984,  108, 0x2acfe7},{  984,  123, 0x2fb9e7},{  976,  116, 0x2ec8e7},}
page_popup.close_window3.logmsg="活动窗口3，点击关闭"

page_popup.close_window4={}		
page_popup.close_window4.color = {{ 1056,  128, 0xfeeeff},{ 1067,  129, 0xfeeeff},{ 1067,  140, 0xfeeeff},{ 1061,  134, 0xfeeeff},}
page_popup.close_window4.logmsg="活动窗口4，点击关闭"

page_popup.get_award_diamond={}		
page_popup.get_award_diamond.color = {{  546,  272, 0xfafafc},{  571,  280, 0xfcf6fd},{  587,  294, 0x925dcd},{  569,  300, 0xe7dafc},}
page_popup.get_award_diamond.click_xy={565,  440}
page_popup.get_award_diamond.logmsg="获得奖励-钻石"

page_popup.get_award_rune={}		
page_popup.get_award_rune.color = {{  562,  273, 0xa6e5f1},{  578,  274, 0x49cae1},{  586,  288, 0x18b3e5},{  578,  298, 0x3ad9ed},{  570,  288, 0x5bd1ea},}
page_popup.get_award_rune.click_xy={565,  440}
page_popup.get_award_rune.logmsg="获得奖励-碎片"

page_popup.over_3hours={}		
page_popup.over_3hours.color = {
	{  760,  429, 0xd22a56},
	{  767,  441, 0xf7e5e9},
	{  783,  448, 0xfbf2f4},
	{  819,  443, 0xf8e9ec},
	{  798,  432, 0xcb2853},
}
page_popup.over_3hours.wait=1800
page_popup.over_3hours.logmsg="超过3个小时，休息30分钟"


page_popup.line_off={}		
page_popup.line_off.color = {
	{  540,  423, 0xe7a52d},
	{  545,  429, 0xffffff},
	{  559,  433, 0xffffff},
	{  582,  433, 0xffffff},
	{  568,  434, 0xe7a226},
}
page_popup.line_off.logmsg="断线重连，点击确定"




page_login_entrance.button_besure_wx={}
page_login_entrance.button_besure_wx.color={
	{  908,  326, 0x04be02},
	{  932,  373, 0xffffff},
	{  937,  347, 0xffffff},
	{  936,  310, 0xffffff},
	{  925,  302, 0x04be02},
}
page_login_entrance.button_besure_wx.logmsg="微信授权-确认登陆"



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




local Colors = {}


Colors.func_list_login= function ()
	local v_list = List.new()
	List.pushlast(v_list,page_login_entrance.button_wx)
	List.pushlast(v_list,page_login_entrance.accept_licence)
	List.pushlast(v_list,page_login_entrance.new_version_update)
	List.pushlast(v_list,page_login_entrance.get_location)
	List.pushlast(v_list,page_login_entrance.start_game)
	--List.pushlast(v_list,page_login_entrance.back_home)
	List.pushlast(v_list,page_login_entrance.sevendays_logon)
--List.pushlast(v_list,page_login_entrance.player_enter_game)
	return v_list
end

Colors.func_list_popup = function ()
local v_list = List.new()
List.pushlast(v_list,page_popup.new_version_update)
List.pushlast(v_list,page_popup.close_window1)
List.pushlast(v_list,page_popup.close_window2)
List.pushlast(v_list,page_popup.close_window3)
List.pushlast(v_list,page_popup.close_window4)
List.pushlast(v_list,page_popup.get_award_diamond)
List.pushlast(v_list,page_popup.get_award_rune)
List.pushlast(v_list,page_popup.over_3hours)
List.pushlast(v_list,page_popup.line_off)

return v_list
end


Colors.func_list_adventure = function ()
	local v_list = List.new()
	List.pushlast(v_list,page_adventure.adventure_mode)
	List.pushlast(v_list,page_adventure.challenge_mode)
	List.pushlast(v_list,page_adventure.next_step)
	List.pushlast(v_list,page_adventure.break_through)
	List.pushlast(v_list,page_adventure.auto_fighting)
	List.pushlast(v_list,page_adventure.anykey_go_on)
	List.pushlast(v_list,page_adventure.once_more)


return v_list
end


Colors.func_list_go_back = function ()
	local v_list = List.new()

List.pushlast(v_list,page_adventure.go_back )
List.pushlast(v_list,page_adventure.anykey_go_on)
--List.pushlast(v_list,page_email.sys_email)
--List.pushlast(v_list,page_email.receive_email)
--List.pushlast(v_list,page_popup.close_welfare_window)
return v_list
end

Colors.func_list_get_stage = function ()
	local v_list = List.new()

List.pushlast(v_list,page_main_thread.home_page)
--List.pushlast(v_list,page_email.sys_email)
--List.pushlast(v_list,page_email.receive_email)
--List.pushlast(v_list,page_popup.close_welfare_window)
return v_list
end


return Colors