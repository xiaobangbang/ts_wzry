
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
page_adventure.auto_fighting.colors={{{ 1047,   33, 0x27aed9},{ 1054,   34, 0x24aed8},{ 1067,   33, 0x2baed9},{ 1058,   39, 0x2090be},{ 1059,   33, 0x13769a},}}
page_adventure.auto_fighting.logmsg="自动按钮"

page_adventure.anykey_go_on={}
page_adventure.anykey_go_on.colors={{{  490,  601, 0xffffff},{  507,  602, 0xffffff},{  498,  593, 0xffffff},{  527,  594, 0xffffff},{  553,  602, 0xffffff},}}
page_adventure.anykey_go_on.logmsg="点击屏幕继续"

page_adventure.once_more={}
page_adventure.once_more.colors={{{  889,  574, 0xdf9829},{  900,  575, 0xffffff},{  900,  585, 0xffffff},{  932,  582, 0xffffff},{  948,  581, 0xffffff},}}
page_adventure.once_more.logmsg="再次挑战"

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

page_login_entrance.start_game={}
page_login_entrance.start_game.colors={ {{  507,  518, 0x1763b2},{  517,  517, 0xffffff},{  529,  523, 0xffffff},{  536,  520, 0x1765b9},{  563,  528, 0xffffff},}}
page_login_entrance.start_game.logmsg="进入游戏"
page_login_entrance.start_game.overtime=20


page_login_entrance.create_player={}
page_login_entrance.create_player.colors={{
		{  947,  582, 0xdead64},
		{  946,  603, 0xdea05b},
		{  994,  582, 0xf7f7ef},
		{ 1021,  588, 0xefedcc},
	},
	{
		{  948,  585, 0xdca963},
		{  948,  593, 0xde9f5b},
		{  969,  584, 0xfcfaf0},
		{  993,  586, 0xf5f2e3},
		{ 1021,  587, 0xf4edd2},
	}}
page_login_entrance.create_player.logmsg="创建角色,默认天龙-男"
page_login_entrance.create_player.foo= function ()  
	ltap(1079,  512)
	mmsleep(500)
	ltap(1021,  588)
	nLog("点击签筒，重新获取名字")
end

page_login_entrance.player_name_exist={}
page_login_entrance.player_name_exist.color={
	{  534,  413, 0xedc670},
	{  535,  427, 0xe1a14a},
	{  559,  421, 0xfcf5d1},
	{  579,  419, 0xfef7d4},
}
--page_login_entrance.player_name_exist.following_function=true
page_login_entrance.player_name_exist.logmsg="角色名称重复"

page_login_entrance.player_enter_game={}
page_login_entrance.player_enter_game.colors={{
		{  945,  582, 0xdead63},
		{  943,  597, 0xdea05b},
		{  967,  587, 0xefead0},
		{ 1000,  581, 0xdbaa62},
	},
	{
		{  966,  587, 0xf6eed7},
		{  999,  582, 0xdbab65},
		{ 1012,  581, 0xfdfbf7},
		{ 1036,  580, 0xedece4},
		{ 1064,  590, 0xdea15c},
	}}
page_login_entrance.player_enter_game.logmsg="选定角色后点击进入游戏"
page_login_entrance.player_enter_game.end_color=true
page_login_entrance.player_enter_game.foo= function()	
	nLog("foo:选定角色后点击进入游戏")
end

page_login_entrance.player_direct_game={}
page_login_entrance.player_direct_game.color={
	{  474,  303, 0x391f08},
	{  505,  305, 0x381e07},
	{  519,  308, 0x381e07},
	{  446,  423, 0xfef7d3},
}
page_login_entrance.player_direct_game.logmsg="当前角色已在线，是否直接进入游戏，点击取消"

page_training={}
page_training.in_game_training={}
page_training.in_game_training.colors={
	{
		{    9,   75, 0xffffff},
		{   17,   78, 0xfdfdfc},
		{  111,   42, 0xcb3131},
		{  116,   56, 0x18a5bd},
	},
	{
		{    9,   75, 0xffffff},
		{   17,   74, 0xfdfdfc},
		{  126,   44, 0xce3333},
		{  125,   55, 0x12a0b2},
	},
	{
		{    9,   75, 0xffffff},
		{   19,   72, 0xf8f8f7},
		{  112,   44, 0xcd3233},
		{  102,   55, 0x18a8af},
	}}

page_training.in_game_training.logmsg="角色进入游戏，开场训练,移动到第一个光圈"
page_training.in_game_training.foo= function () 
	--xxtmoveto(145,  551,190,  326,5)
	touch.tap(148,  489,2000)	
	nLog("foo 函数开场训练 ")
end
page_training.in_game_training.foo2 = function() return "training" end

page_training.skip_scene={}
page_training.skip_scene.colors={{
		{ 1099,   15, 0xfce4b3},
		{ 1114,   15, 0xfce4b3},
		{ 1103,   15, 0xfce4b3},
		{ 1120,   16, 0xfbe2ad},
	},
	{
		{ 1068,   41, 0xe6d093},
		{ 1070,   47, 0xb39c68},
		{ 1089,   40, 0xd4bc7f},
		{ 1089,   52, 0xd7bb7a},
	}}
page_training.skip_scene.logmsg="跳过动画"


page_training.skill_attack={}
page_training.skill_attack.colors={{
		{  785,  342, 0xffff00},
		{  804,  343, 0xfcfd01},
		{  831,  343, 0xfdfd01},
		{  848,  346, 0xffffff},
	},
	{
		{  773,  341, 0xf8f8f8},
		{  785,  343, 0xffff00},
		{  803,  343, 0xfcfc00},
		{  832,  348, 0xffff00},
	}}
page_training.skill_attack.foo=function() 
	ltap(1001,  436)
	mrsleep(3000)
	ltap(1092,  435)
	mrsleep(3000)
	ltap(942,  501)
	mrsleep(3000)
	ltap(943,  594)
	mrsleep(3000)

	for i=1,8 do
		ltap(1045,  540)
		mrsleep(3000)
	end

end
page_training.skill_attack.logmsg="点击技能键释放技能"

page_training.fetch_artifact={}
page_training.fetch_artifact.color={
	{  527,  565, 0xebc16b},
	{  527,  573, 0xe2a74f},
	{  550,  568, 0xfdf6d3},
	{  561,  569, 0xfdf5d2},
}

page_training.fetch_artifact.logmsg="领取神器，对抗丁春秋"
page_training.fetch_artifact.end_color = true
page_training.fetch_artifact.foo=function() 
	ltap( 561,  569)
	mrsleep(3000)
	ltap( 1094,  436)
	mrsleep(3000)
	ltap( 1001,  442)

end


page_training.first_attack={}
page_training.first_attack.colors={
	{
		{  726,  539, 0xfcfcfc},
		{  746,  541, 0xffffff},
		{  815,  541, 0xffffff},
		{  866,  541, 0xf9f9f9},
	},
	{
		{  758,  538, 0xf8f800},
		{  769,  537, 0xffff00},
		{  781,  540, 0xffff00},
		{  803,  540, 0xffff00},
	},
	{
		{  725,  539, 0xfcfcfc},
		{  758,  542, 0xf8f800},
		{  781,  543, 0xffff00},
	}
}

page_training.first_attack.logmsg="点击攻击键使用普攻"
page_training.first_attack.foo = function() 
	for i=1,5 do
		ltap(1048,  542)
		nLog("foo 点击攻击键使用普攻 ")
		mrsleep(4000)
	end 

end




page_popup.close_welfare_window={}
page_popup.close_welfare_window.colors={
	{
		{  169,  104, 0xdea05c},
		{  261,  104, 0xde9f5c},
		{  238,   91, 0x68411f},
		{ 1081,   66, 0xfffab4},
	}
}
page_popup.close_welfare_window.end_color = true
page_popup.close_welfare_window.logmsg="关闭福利窗口"


page_popup.use_money={}		
page_popup.use_money.colors={
	{
		{  776,  457, 0xfef7d3},
		{  776,  464, 0xfef7d3},
		{  784,  454, 0xfaf2ce},
		{  803,  456, 0xfef7d4},
	},
	{
		{  776,  456, 0xfff8d5},
		{  780,  456, 0xfef7d3},
		{  798,  449, 0xfff8d5},
		{  807,  454, 0xfff8d5},
	},
	{
		{  763,  447, 0xf0cc73},
		{  767,  459, 0xe4a84f},
		{  776,  457, 0xfff8d5},
		{  780,  456, 0xfff8d5},
		{  801,  449, 0xfff8d5},
	},
	{
		{  769,  448, 0xefc873},
		{  767,  462, 0xe0a34c},
		{  776,  459, 0xfef7d3},
		{  796,  454, 0xfff8d5},
		{  808,  459, 0xfff8d5},
	}}
page_popup.use_money.logmsg="使用铜钱"	


page_popup.use={}
page_popup.use.colors={
	{
		{  764,  448, 0xefc871},
		{  776,  460, 0xfef7d3},
		{  798,  449, 0xfef7d3},
		{  810,  456, 0xfff8d5},
	}
	,
	{
		{  776,  456, 0xfff8d5},
		{  776,  463, 0xfff8d5},
		{  796,  453, 0xfff8d5},
		{  803,  458, 0xfff8d5},
	}}
page_popup.use_money.logmsg="使用"	


page_popup.first_scene={}		
page_popup.first_scene.color = {
	{  232,   33, 0x000000},
	{  509,   52, 0x000000},
	{  890,   48, 0x000000},
}
page_popup.first_scene.logmsg="跳过开场动画"	


page_popup.no_push_notice={}		
page_popup.no_push_notice.color = {
	{  392,  429, 0x007aff},
	{  429,  437, 0x007aff},
	{  472,  431, 0x007aff},
	{  433,  434, 0xd0cdcc},
	{  436,  445, 0x007aff},
}
page_popup.no_push_notice.logmsg="推送通知，不允许"	




page_popup.put_on={}		
page_popup.put_on.color = {
	{  766,  447, 0xf0cc74},
	{  763,  465, 0xde9f49},
	{  785,  454, 0xfef7d3},
	{  799,  461, 0xfef6d3},
}
page_popup.put_on.logmsg="装备"	

page_popup.net_retry={}		
page_popup.net_retry.colors = {
	{
		{  671,  418, 0xfef7d3},
		{  678,  418, 0xfef7d3},
		{  679,  426, 0xfcf4d0},
		{  696,  416, 0xfef7d3},
	},
	{
		{  662,  418, 0xebbd67},
		{  662,  422, 0xe2a952},
		{  675,  420, 0xfef7d3},
		{  688,  420, 0xfef7d4},
		{  695,  420, 0xfdf5d2},
	}}
page_popup.net_retry.logmsg="网络不稳，重试"	

page_popup.net_lost_window={}
page_popup.net_lost_window.color={
	{  460,  291, 0x381e07},
	{  474,  293, 0x391f08},
	{  487,  291, 0x381e07},
	{  511,  291, 0x381e07},
	{  568,  422, 0xe4ab52},
}
page_popup.net_lost_window.logmsg="与服务器断开连接，请检查网络"

page_popup.close_pop_window1={}		
page_popup.close_pop_window1.color ={
	{  941,  237, 0xd0bea5},
	{  949,  238, 0xd0bea7},
	{  941,  245, 0xead1b6},
	{  946,  243, 0xe5cfb2},
}
page_popup.close_pop_window1.logmsg="关闭异常弹窗"	



page_main={}
page_main.main_task_guide={}
page_main.main_task_guide.colors={
	{
		{  390,  246, 0xf6f6f6},
		{  399,  245, 0xe7e802},
		{  403,  245, 0xe1e302},
		{  441,  247, 0xebeceb},
		},{
		{  390,  247, 0xf5f6f6},
		{  399,  249, 0xbcc007},
		{  407,  247, 0xb1b607},
		{  427,  245, 0xced205},
	}}
page_main.main_task_guide.click_xy={124,  244}
page_main.main_task_guide.logmsg="第一次追踪主任务"

page_main.main_task_chain={}
page_main.main_task_chain.colors={
	{
		{  390,  222, 0xfcfbfb},
		{  406,  222, 0xdddd06},
		{  407,  225, 0xecec03},
		{  426,  222, 0xdcdd04},
	},
	{	
		{  390,  246, 0xf6f6f6},
		{  399,  245, 0xe7e802},
		{  403,  245, 0xe1e302},
		{  441,  247, 0xebeceb},
	}}
page_main.main_task_chain.click_xy={124,  244}

page_main.main_task_chain.logmsg="追踪主任务"

page_main.main_task_completed={}
page_main.main_task_completed.color={
	{  112,  265, 0x07e804},
	{  116,  268, 0x00ff00},
	{  127,  266, 0x00ff00},
	{   15,  224, 0x00ff00},
	{   24,  229, 0x00ff00},
}
--page_main.main_task_completed.click_xy={124,  244}
page_main.main_task_completed.logmsg="点击主线-完成"


page_main.task_completed_guide={}
page_main.task_completed_guide.color={
	{  587,  450, 0xffffff},
	{  602,  448, 0xffff00},
	{  621,  446, 0xffff00},
	{  642,  450, 0xffffff},
}

page_main.task_completed_guide.logmsg="第一次完成任务"
page_main.task_completed_guide.click_xy={866,  454}

page_main.task_completed={}
page_main.task_completed.colors={{
		{  822,  446, 0xa5b35e},
		{  883,  454, 0xfff8d5},
		{  838,  451, 0xfdf6d3},
		{  854,  453, 0xfef7d3},
		{  885,  450, 0x99a95b},
	},
	{
		{  833,  447, 0xfdf6d3},
		{  839,  455, 0xfdf6d3},
		{  857,  448, 0xf7f0cc},
		{  883,  454, 0xfff8d5},
		{  856,  446, 0xa6b35d},
	},
	{
		{  834,  447, 0xfff8d5},
		{  836,  451, 0xfdf6d3},
		{  854,  448, 0xf7f0cc},
		{  878,  454, 0xfff8d5},
		{  885,  450, 0x9aaa5a},
	}
}

page_main.task_completed.logmsg="完成任务"

page_main.backgroud={}
page_main.backgroud.colors={{
		{  127,   43, 0xce3535},
		{  107,   55, 0x12a1af},
		{ 1121,   11, 0xf7e0a9},
		{ 1116,   16, 0xf7e2ad},
		{ 1112,   14, 0x635231},
	},
	{
		{  101,   42, 0xce3931},
		{  105,   55, 0x18a9b0},
		{  999,  127, 0xd8b98e},
		{ 1007,  127, 0xdac190},
		{ 1015,  127, 0xd8c190},
	}}
page_main.backgroud.logmsg="主界面背景，定时监控右上角，看是否移动"
page_main.backgroud.foo= function() 
	ltap(66,  246) --点击主线任务
	nLog("点击主线任务")
	--mrsleep(3000)
end

page_main.accept_task={}
page_main.accept_task.colors={{
		{  831,  450, 0xfdf6d3},
		{  836,  455, 0xfdf6d3},
		{  854,  451, 0xfdf7d3},
		{  893,  456, 0xfef7d3},
		{  868,  445, 0xa7b55f},
	},
	{
		{  830,  449, 0xf0ebc6},
		{  842,  447, 0xfef7d4},
		{  855,  451, 0xfef7d3},
		{  881,  454, 0xfff8d5},
		{  866,  458, 0x7d9249},
	}}

page_main.accept_task.logmsg="接受任务"


page_main.arti_fact_piece_guide={}
page_main.arti_fact_piece_guide.colors={{
		{   68,  151, 0xd2a960},
		{   71,  190, 0xdfb673},
		{  480,  372, 0xeeee01},
		{  488,  372, 0xfafa00},
	},
	{
		{  453,  368, 0xf8f8f8},
		{  471,  372, 0xcece02},
		{  493,  370, 0xe2e201},
		{  545,  373, 0xd5d5d5},
	}}
page_main.arti_fact_piece_guide.once= true
page_main.arti_fact_piece_guide.logmsg="领取神器碎片"
page_main.arti_fact_piece_guide.click_xy={463,  500}


page_main.arti_fact_preview_guide={}
page_main.arti_fact_preview_guide.colors={{
		{   62,  154, 0xd1a15d},
		{  146,  397, 0xfcfcfc},
		{  153,  397, 0xfefe00},
		{  176,  397, 0xf5f501},
	},
	{
		{  141,  395, 0xf9f9f9},
		{  153,  399, 0xfefe00},
		{  163,  394, 0xfbfb00},
		{  178,  397, 0xf5f501},
	}}

page_main.arti_fact_preview_guide.logmsg="预览神器"
page_main.arti_fact_preview_guide.click_xy={167,  497}

page_main.arti_fact_preview_close_guide={}
page_main.arti_fact_preview_close_guide.color={
	{  726,  177, 0xffff00},
	{  708,  175, 0xfefefe},
	{  737,  175, 0xf4f402},
	{  765,  171, 0xf4f4f3},
}

page_main.arti_fact_preview_close_guide.logmsg="关闭预览神器界面"
page_main.arti_fact_preview_close_guide.click_xy={934,  101}

page_main.arti_fact_close_guide={}
page_main.arti_fact_close_guide.color={
	{  826,  176, 0xfdfdfd},
	{  839,  174, 0xf4f401},
	{  855,  175, 0xf2f201},
	{  897,  167, 0xf7f7f7},
}

page_main.arti_fact_close_guide.logmsg="关闭神器预开启界面"
page_main.arti_fact_close_guide.click_xy={1062,  110}


page_main.picture_move={}
page_main.picture_move.color={
	{  461,   80, 0xc7a367},
	{  551,   86, 0xdab884},
	{  681,   87, 0xc69b61},
	{  728,  233, 0xd9af6e},
	{  402,  494, 0xcaaa68},
}
page_main.picture_move.logmsg="画像，拼接完整"
page_main.picture_move.foo = function()
	mrsleep(2000)
	xxtmoveto(215,  184,552,  185,1)
	mrsleep(2000)
	xxtmoveto( 218,  440,520,  462,1)
	mrsleep(2000)
	xxtmoveto(909,  314,631,  279,1)

end


page_main.picture_onemore={}
page_main.picture_onemore.color={
	{  477,  341, 0xa0af5d},
	{  491,  347, 0xfff8d5},
	{  519,  342, 0xfef7d3},
	{  541,  346, 0xfef7d4},
}
page_main.picture_onemore.logmsg="画像，再试一次"


page_main.menu_guide={}
page_main.menu_guide.color={
	{  871,  264, 0xfcfcfc},
	{  884,  264, 0xfbfb01},
	{  893,  262, 0xefef00},
	{  910,  262, 0xf9f900},
}
page_main.menu_guide.click_xy={1094,  350}
page_main.menu_guide.logmsg="打开功能菜单"

page_main.skill_menu_guide={}
page_main.skill_menu_guide.color={
	{  836,  439, 0xfefefd},
	{  849,  438, 0xfdfd00},
	{  858,  441, 0xfefe00},
	{  875,  439, 0xfefe00},
}
page_main.skill_menu_guide.click_xy={1089,  438}
page_main.skill_menu_guide.logmsg="打开技能界面"

page_main.auto_fighting_guide={}
page_main.auto_fighting_guide.color={
	{  569,  420, 0xffffff},
	{  584,  422, 0xfefe00},
	{  602,  417, 0xfcfc00},
	{  606,  425, 0xfdfd00},
}
page_main.auto_fighting_guide.click_xy={788,  523}
page_main.auto_fighting_guide.logmsg="打开自动挂机"

page_main.adopt_pet={}
page_main.adopt_pet.color={
	{  700,  503, 0xedc66f},
	{  704,  515, 0xe2a44c},
	{  718,  509, 0xfef7d3},
	{  730,  507, 0xfff8d5},
	{  736,  511, 0xfdf5d2},
}
page_main.adopt_pet.logmsg="领取宠物"

page_main.pet_menu={}
page_main.pet_menu.color={
	{  189,  124, 0xfaf9f8},
	{  202,  126, 0xfcfc00},
	{  211,  127, 0xfefe00},
	{  225,  127, 0xfdfd00},
}
page_main.pet_menu.click_xy={36,  127}
page_main.pet_menu.logmsg="宠物menu"

page_main.pet_menu_close_guide={}
page_main.pet_menu_close_guide.colors={
	{
		{  872,  147, 0xfefdfd},
		{  889,  150, 0xfdfd00},
		{  901,  151, 0xf4f201},
		{  901,  156, 0xf3f201},
		},{
		{  876,  149, 0xf4f2f2},
		{  885,  150, 0xf6f300},
		{  901,  148, 0xf4f201},
		{  914,  149, 0xdad202},
	}}
page_main.pet_menu_close_guide.click_xy={1082,   64}
page_main.pet_menu_close_guide.logmsg="关闭宠物界面"


page_main.choose_pet={}
page_main.choose_pet.color={
	{  491,  346, 0xfdf6d3},
	{  511,  345, 0xfcf5d2},
	{  532,  346, 0xfff8d5},
	{  557,  348, 0xfcf6d2},
}
page_main.choose_pet.logmsg="选择宠物"


page_main.big_skill={}
page_main.big_skill.color={
	{  705,  329, 0xf9f9f8},
	{  686,  329, 0xfdfdfc},
	{  724,  333, 0xf9f900},
	{  735,  329, 0xffff00},
}
page_main.big_skill.click_xy={925,  420}
page_main.big_skill.logmsg="释放绝世神功"

page_main.skill_upgrade_guide={}
page_main.skill_upgrade_guide.color={
	{  888,  468, 0xffffff},
	{  902,  470, 0xffff00},
	{  912,  470, 0xffff00},
	{  919,  472, 0xffff00},
}
page_main.skill_upgrade_guide.click_xy={919,  565}
page_main.skill_upgrade_guide.logmsg="升级技能"

page_main.skill_menu_close_guide={}
page_main.skill_menu_close_guide.color={
	{  872,  148, 0xfefefe},
	{  887,  150, 0xf5f502},
	{  901,  150, 0xf4f402},
	{  937,  150, 0xf1f0f0},
}
page_main.skill_menu_close_guide.click_xy={1082,   67}
page_main.skill_menu_close_guide.logmsg="关闭界面"

page_main.close_func_menu_guide={}
page_main.close_func_menu_guide.color={
	{  871,  260, 0xfdfdfd},
	{  886,  262, 0xe8e704},
	{  900,  262, 0xf6f700},
	{  979,  262, 0xfdfdfd},
}
page_main.close_func_menu_guide.click_xy={1094,  350}
page_main.close_func_menu_guide.logmsg="关闭功能菜单"


page_main.pet_go_fighting_guide={}
page_main.pet_go_fighting_guide.color={
	{  948,  446, 0xffff00},
	{  935,  449, 0xffffff},
	{  952,  456, 0xfdfd00},
	{  968,  455, 0xfdfd00},
}
page_main.pet_go_fighting_guide.click_xy={960,  558}
page_main.pet_go_fighting_guide.logmsg="点击出战珍兽"

page_main.adopt_horse={}
page_main.adopt_horse.color={
	{  351,  540, 0xfef6d3},
	{  358,  540, 0xfef7d3},
	{  365,  540, 0xfdf6d3},
	{  376,  539, 0xfdf5d2},
}
page_main.adopt_horse.logmsg="领取坐骑-黑玫瑰"

page_main.black_horse_active={}
page_main.black_horse_active.color={
	{  779,  452, 0xfef7d3},
	{  782,  458, 0xfef7d4},
	{  800,  454, 0xfef7d4},
	{  810,  462, 0xfef7d4},
}
page_main.black_horse_active.logmsg="黑玫瑰-激活"


page_main.exam_activity={}
page_main.exam_activity.color={
	{  442,  453, 0xb1a48e},
	{  872,  463, 0xb4a692},
	{  283,  434, 0xb1a38e},
	{  399,  266, 0xb1a58e},
	{  439,  239, 0xa1917e},
}
page_main.exam_activity.logmsg="科举考试5道题"

page_main.shop_buy_pos7={}
page_main.shop_buy_pos7.color={
	{  476,  449, 0xfdf5d2},
	{  479,  454, 0xfef6d3},
	{  495,  455, 0xfef7d3},
	{  504,  445, 0xfef7d3},
}
page_main.shop_buy_pos7.logmsg="商店购买净*砂"


page_main.buy_ok={}
page_main.buy_ok.color={
	{  551,  413, 0xfdf5d2},
	{  554,  422, 0xf9f0cb},
	{  560,  421, 0xfdf6d3},
	{  577,  419, 0xfef7d4},
}
page_main.buy_ok.logmsg="确定"

page_main.shenmifensha={}
page_main.shenmifensha.color={
	{  490,  342, 0xfef7d4},
	{  496,  347, 0xfdf6d3},
	{  504,  341, 0xfdf6d3},
	{  519,  343, 0xfef7d3},
}
page_main.shenmifensha.logmsg="神秘砂粉"

page_main.submit_task_needed={}
page_main.submit_task_needed.color={
	{  551,  489, 0xfdf6d3},
	{  556,  486, 0xfdf6d3},
	{  572,  485, 0xfff8d5},
	{  583,  485, 0xfff8d5},
}
page_main.submit_task_needed.logmsg="提交"

page_main.letter_deal_button={}
page_main.letter_deal_button.color={
	{  491,  344, 0xfef7d3},
	{  499,  350, 0xfdf6d3},
	{  511,  344, 0xfdf6d3},
	{  517,  346, 0xfdf6d3},
}
page_main.letter_deal_button.logmsg="擦拭信件"

page_main.clean_letter={}
page_main.clean_letter.color={
	{  384,   43, 0xffffff},
	{  397,   45, 0xfdfdfd},
	{  413,   43, 0xffffff},
	{  441,   37, 0xfbfbfb},
	{  462,   40, 0xffffff},
}
page_main.clean_letter.logmsg="慢慢擦拭信件"
page_main.clean_letter.foo= function()
	mrsleep(1000)
	--[[
	xxtmoveto(849,  154,850,  487,10)
	mrsleep(1000)
	xxtmoveto(749,  152,745,  475,10)
	mrsleep(1000)
	xxtmoveto(655,  155,656,  478,10)
	mrsleep(1000)
	xxtmoveto(543,  148,546,  476,10)
	mrsleep(1000)
	xxtmoveto(404,  151,395,  481,10)
	mrsleep(1000)
	xxtmoveto(262,  166,257,  468,10)
	--]]
	--[[
	{
	{  180,  123, 0x937559},
	{  930,  117, 0x92765a},
	{  183,  181, 0xaf9276},
	{  927,  173, 0x987e63},
	{  181,  229, 0xa2896f},
	{  938,  230, 0xa1896e},
	{  178,  274, 0xb69b81},
	{  940,  266, 0xa0876e},
	{  178,  298, 0xb79d83},
	{  940,  297, 0x8d775e},
}
{
	{  183,  336, 0x6a6656},
	{  939,  332, 0x8e785f},
	{  181,  366, 0xb49d82},
	{  940,  370, 0x826e57},
	{  181,  403, 0xab9277},
	{  931,  398, 0x937e67},
	{  178,  417, 0xa48c70},
	{  937,  418, 0x99806a},
	{  179,  441, 0xaa9074},
	{  930,  444, 0x987f68},
}
{
	{  176,  468, 0xa78a6c},
	{  937,  465, 0x937861},
	{  177,  484, 0xaa8b6e},
	{  934,  484, 0x977b62},
	{  180,  508, 0xaa896b},
	{  922,  505, 0x927a5f},
}
--]]
end



page_email={}
page_email.email_icon={}
page_email.email_icon.color={
	{  334,  587, 0x6f5233},
	{  334,  583, 0x72523d},
	{  341,  611, 0x725136},
	{  350,  601, 0x6f4e37},
}
page_email.email_icon.logmsg="主界面底部邮件图标"

page_email.sys_email={}
page_email.sys_email.colors={
	{
		{   77,  295, 0x35200b},
		{   84,  321, 0x2a1400},
		{   76,  327, 0x311a06},
		{   80,  329, 0xbdb59e},
	},
	{
		{   72,  498, 0xb2aa8e},
		{   83,  505, 0x2c1602},
		{   81,  505, 0x2b1400},
		{   84,  530, 0x301905},
		{   76,  530, 0x301905},
	},
	{
		{   75,  204, 0xc1baa4},
		{   89,  206, 0xbfb8a1},
		{   80,  228, 0xbab29a},
		{   91,  224, 0xb6ae92},
	}}
page_email.sys_email.logmsg="点击邮件灯笼"

page_email.receive_email={}
page_email.receive_email.colors={
	{
		{  338,  573, 0xfef7d4},
		{  370,  574, 0xfef6d3},
		{  379,  566, 0xfef7d3},
		{  395,  566, 0xfff8d5},
		},{
		{   74,  233, 0xf7d361},
		{   90,  233, 0xf9d663},
		{  336,  573, 0xfef7d4},
		{  396,  574, 0xfdf5d2},
	}}
page_email.receive_email.logmsg="一键领取"
page_email.receive_email.end_color = true
page_email.receive_email.foo = function ()
	ltap(396,  574) --click 一键领取
	mrsleep(3000)
	ltap(1081,   67) --click 关闭邮件窗口
end


page_welfare={}
page_welfare.welfare_find_back={}
page_welfare.welfare_find_back.colors={
	{
	{  216,  545, 0xc9b899},
	{  185,  545, 0x391f08},
	{  223,  548, 0x391f08},
	{  233,  548, 0x472e16},
},
	{
		{  175,  477, 0xc9b899},
		{  185,  482, 0x381e07},
		{  289,  464, 0xcc1206},
		{  227,  483, 0x381e07},
	},
	{
		{  185,  480, 0x391f08},
		{  192,  478, 0x3a2009},
		{  229,  475, 0x381e07},
		{  234,  483, 0x381e07},
	},
	{
		{  185,  481, 0x381e07},
		{  185,  487, 0x381e07},
		{  223,  480, 0x381e07},
		{  238,  482, 0x381e07},
	},
	{
		{  185,  543, 0x381e07},
		{  192,  544, 0x381e07},
		{  223,  547, 0x381e07},
		{  234,  548, 0x381e07},
		},{
		{  185,  479, 0x391f08},
		{  229,  479, 0x412710},
		{  238,  486, 0x381e07},
		{  192,  477, 0x3a2009},
	}}
page_welfare.welfare_find_back.logmsg="福利找回"

page_welfare.no_resource={}
page_welfare.no_resource.colors={
	{
		{  662,  185, 0x381e07},
		{  670,  182, 0x381e07},
		{  687,  182, 0x3a2009},
		{  684,  187, 0x3b210a},
		{ 1081,   67, 0xfffbb3},
	}}
page_welfare.no_resource.logmsg="暂无资源可找回,点击关闭福利窗口"
page_welfare.no_resource.end_color= true


page_welfare.scroll_bottom={}
page_welfare.scroll_bottom.colors={
	{
		{  340,   99, 0x381e07},
		{  350,   96, 0x3a2009},
		{  362,  102, 0x381e07},
		{  362,  106, 0x381e07},
		{  375,   95, 0x391f08},
	},
	{
		{  168,  475, 0xdead66},
		{  185,  482, 0x694220},
		{  211,  492, 0xdea05c},
		{  227,  482, 0x68411f},
	}}
page_welfare.scroll_bottom.logmsg="直接下拉到底部"
page_welfare.scroll_bottom.end_color= true
page_welfare.scroll_bottom.foo = function()	
	xxtmoveto(683,  432,685,  208,5)
	mrsleep(3000)
	xxtmoveto(683,  432,685,  208,5)
	mrsleep(3000)
	xxtmoveto(683,  432,685,  208,5)
end

page_welfare.datu_show={}
page_welfare.datu_show.colors={
	{ -- 倒数第二行，逞凶打图完美找回
		{  339,  327, 0x3a2009},
		{  356,  325, 0x391f08},
		{  369,  325, 0x391f08},
		{  385,  325, 0x391f08},
		{  392,  325, 0x391f08},
		{  595,  338, 0xc6b59a},
		{  989,  350, 0xfff8d5},
	},
	{--倒数第一行逞凶打图-完美找回
		{  932,  448, 0xfff8d5},
		{  934,  452, 0xfdf6d3},
		{  958,  458, 0xfef6d3},
		{  967,  453, 0xfef7d3},
		{  996,  455, 0xfff8d5},
	}}
page_welfare.datu_show.logmsg="完美找回-逞凶打图"


page_welfare.find_back_close={}
page_welfare.find_back_close.colors={
	{
		{  185,  478, 0x68411f},
		{  193,  479, 0x68411f},
		{  230,  475, 0x68411f},
		{ 1081,   66, 0xfffab4},
		{ 1077,   62, 0xfff7b5},
	}}
page_welfare.find_back_close.end_color = true
page_welfare.find_back_close.logmsg="已找回的话，关闭窗口"


page_welfare.datu_popup={}
page_welfare.datu_popup.colors={
	{
		{  554,  202, 0x9b8b78},
		{  574,  204, 0x9a8b78},
		{  669,  532, 0xfef7d3},
		{  698,  533, 0xfff8d5},
		},{
		{  554,  145, 0x68411f},
		{  574,  144, 0x694220},
		{  525,  144, 0x684220},
		{  516,  141, 0x6a4422},
		{  687,  533, 0xfff8d5},
		{  691,  533, 0xfff8d5},
	}}
page_welfare.datu_popup.foo = function ()
	ltap(691,  533) --点击找回按钮
	mrsleep(3000)
	ltap(1080,   65) --关闭福利窗口
end
page_welfare.datu_popup.logmsg="弹窗-完美找回-逞凶打图"
page_welfare.datu_popup.end_color = true

page_bag={}
page_bag.bag_icon={}
page_bag.bag_icon.colors={
	{
		{  993,  350, 0xd2aa50},
		{  995,  357, 0xcc943b},
		{ 1005,  347, 0xad7137},
		{ 1014,  358, 0xd57231},
		{ 1011,  366, 0xf9f3e2},
	}}
page_bag.bag_icon.logmsg="点击背包"

page_bag.pack_bag={}
page_bag.pack_bag.color={
	{  668,  563, 0xf3d077},
	{  812,  562, 0xf2d279},
	{  929,  567, 0xf0c872},
	{  966,  577, 0xfef7d4},
}
page_bag.pack_bag.foo = function()
	ltap(966,  577) --点击整理
	mrsleep(3000)
	ltap(871,   92) --点击材料页签
end
page_bag.pack_bag.logmsg="背包主界面，点击整理,然后点击材料"

material_color = {
	{  845,  100, 0xd49c5a},
	{  866,   90, 0x68411f},
	{  874,   90, 0x68411f},
	{  885,   95, 0x694220},
}
page_bag.material1={}
page_bag.material1.color=material_color
page_bag.material1.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排1"
page_bag.material1.click_xy={650,  159}

page_bag.material2={}
page_bag.material2.color=material_color
page_bag.material2.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排2"
page_bag.material2.click_xy={733,  160}

page_bag.material3={}
page_bag.material3.color=material_color
page_bag.material3.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排3"
page_bag.material3.click_xy={814,  160}

page_bag.material4={}
page_bag.material4.color=material_color
page_bag.material4.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排4"
page_bag.material4.click_xy={899,  163}

page_bag.material5={}
page_bag.material5.color=material_color
page_bag.material5.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排5"
page_bag.material5.click_xy={988,  162}

page_bag.close_bag={}
page_bag.close_bag.color={
	{  826,  562, 0xf2d179},
	{  932,  567, 0xefc871},
	{  671,  562, 0xf3d379},
	{ 1081,   67, 0xfffbb3},
}
page_bag.close_bag.end_color =  true
page_bag.close_bag.logmsg="遍历背包完毕，关闭窗口"

page_xishi={}
page_xishi.popup={}
page_xishi.popup.colors={
	{
		{  157,  417, 0xf4f4f3},
		{  168,  417, 0xfefefe},
		{  185,  417, 0xffffff},
		{  158,  467, 0xfefdfd},
		{  178,  471, 0xffffff},
		{  231,   94, 0xf49cfd},
	},
	{
		{  160,  413, 0xffffff},
		{  159,  425, 0xffffff},
		{  168,  419, 0xfefefe},
		{  155,  467, 0xfefdfd},
		{  175,  471, 0xfcfcfc},
		{  195,  473, 0xffffff},
		{  317,  340, 0xffff00},
	}}
page_xishi.popup.logmsg="目标出世，宝图在手，啥也不愁"
page_xishi.popup.click_xy={1081,   66}


page_next_charactor={}
page_next_charactor.setup={}
page_next_charactor.setup.colors={
	{
		{  868,  621, 0xe1bf71},
		{  856,  620, 0xf1cf82},
		{  872,  613, 0xf3e7cd},
		{  869,  586, 0xffea8f},
	}}
page_next_charactor.setup.logmsg="开始切换下一个角色，点击底部设置按钮"

page_next_charactor.change_account={}
page_next_charactor.change_account.color = {
	{  809,  310, 0xfff8d5},
	{  815,  313, 0xfff8d5},
	{  833,  315, 0xfff8d5},
	{  844,  314, 0xfff8d5},
	{  860,  321, 0x758b4a},
}
page_next_charactor.change_account.logmsg="点击更换账号"

page_next_charactor.change_account_ok={}
page_next_charactor.change_account_ok.color = {
	{  674,  418, 0xfef7d3},
	{  680,  421, 0xfcf4d1},
	{  697,  419, 0xfef7d4},
	{  695,  428, 0xfff8d5},
}
page_next_charactor.change_account_ok.end_color = true
page_next_charactor.change_account_ok.logmsg="确定更换账号"

page_next_charactor.func_menu={}
page_next_charactor.func_menu.colors={
	{
		{ 1088,  343, 0x6d4c31},
		{ 1099,  343, 0x6f4e31},
		{ 1088,  354, 0x6a4a33},
		{ 1100,  355, 0x6f5035},
	}}
page_next_charactor.func_menu.end_color = true
page_next_charactor.func_menu.logmsg="开始切换下一个角色，点击功能菜单"


page_clear={}
page_clear.welfare_window={}
page_clear.welfare_window.colors={
	{
		{  172,   89, 0xdeac65},
		{  212,   96, 0xdea15b},
		{  238,   92, 0x68411f},
		{ 1080,   66, 0xfff9b3},
		},{
		{  273,   84, 0xdead66},
		{  275,  104, 0xdea05b},
		{  238,   89, 0x694220},
		{ 1082,   64, 0xfff7b5},
	}}
--page_clear.welfare_window.once= true
page_clear.welfare_window.foo2 = function() return "welfare_window" end
page_clear.welfare_window.logmsg="在领取邮件之前，关闭福利弹窗"


page_close={}
page_close.all_big_window={}
page_close.all_big_window.colors = {
	{
		{ 1076,   61, 0xfff5b3},
		{ 1085,   62, 0xfef8b2},
		{ 1080,   69, 0xfef7af},
	}
}
page_close.all_big_window.logmsg="关闭所有窗口"

page_main_task={}
page_main_task.task_button={}
page_main_task.task_button.colors={
	{
		{   32,  187, 0x68411f},
		{   41,  188, 0x68411f},
		{   59,  181, 0x704924},
		{   59,  191, 0x68411f},
	}
}
page_main_task.task_button.logmsg="进入游戏主界面"
page_main_task.task_button.foo2=function() 
	--nLog("进入游戏主界面")
	return "player_in"
end



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




local Colors = {

func_list_find_back =function ()
	local v_list = List.new()
	List.pushlast(v_list,page_welfare.welfare_find_back)
	List.pushlast(v_list,page_welfare.scroll_bottom)
	return v_list
end
,

func_list_bag = function ()
	local v_list = List.new()
	List.pushlast(v_list,page_bag.bag_icon)
	List.pushlast(v_list,page_bag.pack_bag)
	List.pushlast(v_list,page_bag.material1)
	List.pushlast(v_list,page_bag.material2)
	List.pushlast(v_list,page_bag.material3)
	List.pushlast(v_list,page_bag.material4)
	List.pushlast(v_list,page_bag.material5)
	List.pushlast(v_list,page_bag.close_bag)
	return v_list
end
,

func_list_xishi_map = function ()
	local v_list = List.new()
	List.pushlast(v_list,page_xishi.popup)
	return v_list
end
,


func_list_func_menu = function ()
	local v_list = List.new()
	List.pushlast(v_list,page_next_charactor.func_menu)
	return v_list
end
,

func_list_setup = function ()
	local v_list = List.new()
	List.pushlast(v_list,page_next_charactor.setup)
	List.pushlast(v_list,page_next_charactor.change_account)
	List.pushlast(v_list,page_next_charactor.change_account_ok)
	return v_list
end

}


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


Colors.func_list_get_stage = function ()
	local v_list = List.new()

List.pushlast(v_list,page_main_thread.home_page)
--List.pushlast(v_list,page_email.sys_email)
--List.pushlast(v_list,page_email.receive_email)
--List.pushlast(v_list,page_popup.close_welfare_window)
return v_list
end


return Colors