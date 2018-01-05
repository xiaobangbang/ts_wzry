local Colors = {}
Colors.page_login_entrance={}
Colors.page_login_entrance.button_wx={}
Colors.page_login_entrance.button_wx.colors={
	{
		{  491,  547, 0xf0f5f6},
		{  475,  540, 0x81e70c},
		{  510,  538, 0x8cae65},
		{  676,  540, 0x8cad64},
	},
	{
		{  471,  539, 0x81e809},
		{  492,  549, 0xeaf1f5},
		{  564,  527, 0x90b163},
	}, 
	{
		{  471,  539, 0x81e809},
		{  492,  549, 0xeaf1f5},
		{  564,  527, 0x90b163},
	}}
Colors.page_login_entrance.button_wx.click_xy={564,  527}
Colors.page_login_entrance.button_wx.logmsg="选择微信登陆"


Colors.page_login_entrance.button_besure_wx={}
Colors.page_login_entrance.button_besure_wx.color={
	{  908,  326, 0x04be02},
	{  932,  373, 0xffffff},
	{  937,  347, 0xffffff},
	{  936,  310, 0xffffff},
	{  925,  302, 0x04be02},
}
Colors.page_login_entrance.button_besure_wx.logmsg="微信授权-确认登陆"

Colors.page_login_entrance.enter_game={}
Colors.page_login_entrance.enter_game.colors={ {
		{  509,  538, 0xdead64},
		{  535,  542, 0xf1f5de},
		{  565,  539, 0xd9a762},
		{  609,  538, 0xf7f7f3},
	},
	{
		{  504,  531, 0xdeab66},
		{  546,  537, 0xdcab65},
		{  576,  535, 0xfdfbf7},
		{  603,  535, 0xfaf9f4},
	}}
Colors.page_login_entrance.enter_game.logmsg="进入游戏"


Colors.page_login_entrance.create_player={}
Colors.page_login_entrance.create_player.colors={{
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
Colors.page_login_entrance.create_player.logmsg="创建角色,默认天龙-男"
Colors.page_login_entrance.create_player.foo= function ()  
	ltap(1079,  512)
	mmsleep(500)
	ltap(1021,  588)
	nLog("点击签筒，重新获取名字")
end

Colors.page_login_entrance.player_name_exist={}
Colors.page_login_entrance.player_name_exist.color={
	{  534,  413, 0xedc670},
	{  535,  427, 0xe1a14a},
	{  559,  421, 0xfcf5d1},
	{  579,  419, 0xfef7d4},
}
--Colors.page_login_entrance.player_name_exist.following_function=true
Colors.page_login_entrance.player_name_exist.logmsg="角色名称重复"

Colors.page_login_entrance.player_enter_game={}
Colors.page_login_entrance.player_enter_game.colors={{
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
Colors.page_login_entrance.player_enter_game.logmsg="选定角色后点击进入游戏"
Colors.page_login_entrance.player_enter_game.end_color=true
Colors.page_login_entrance.player_enter_game.foo= function()	
	nLog("foo:选定角色后点击进入游戏")
end

Colors.page_login_entrance.player_direct_game={}
Colors.page_login_entrance.player_direct_game.color={
	{  474,  303, 0x391f08},
	{  505,  305, 0x381e07},
	{  519,  308, 0x381e07},
	{  446,  423, 0xfef7d3},
}
Colors.page_login_entrance.player_direct_game.logmsg="当前角色已在线，是否直接进入游戏，点击取消"

Colors.page_training={}
Colors.page_training.in_game_training={}
Colors.page_training.in_game_training.colors={
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

Colors.page_training.in_game_training.logmsg="角色进入游戏，开场训练,移动到第一个光圈"
Colors.page_training.in_game_training.foo= function () 
	--xxtmoveto(145,  551,190,  326,5)
	touch.tap(148,  489,2000)	
	nLog("foo 函数开场训练 ")
end
Colors.page_training.in_game_training.foo2 = function() return "training" end

Colors.page_training.skip_scene={}
Colors.page_training.skip_scene.colors={{
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
Colors.page_training.skip_scene.logmsg="跳过动画"


Colors.page_training.skill_attack={}
Colors.page_training.skill_attack.colors={{
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
Colors.page_training.skill_attack.foo=function() 
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
Colors.page_training.skill_attack.logmsg="点击技能键释放技能"

Colors.page_training.fetch_artifact={}
Colors.page_training.fetch_artifact.color={
	{  527,  565, 0xebc16b},
	{  527,  573, 0xe2a74f},
	{  550,  568, 0xfdf6d3},
	{  561,  569, 0xfdf5d2},
}

Colors.page_training.fetch_artifact.logmsg="领取神器，对抗丁春秋"
Colors.page_training.fetch_artifact.end_color = true
Colors.page_training.fetch_artifact.foo=function() 
	ltap( 561,  569)
	mrsleep(3000)
	ltap( 1094,  436)
	mrsleep(3000)
	ltap( 1001,  442)

end


Colors.page_training.first_attack={}
Colors.page_training.first_attack.colors={
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

Colors.page_training.first_attack.logmsg="点击攻击键使用普攻"
Colors.page_training.first_attack.foo = function() 
	for i=1,5 do
		ltap(1048,  542)
		nLog("foo 点击攻击键使用普攻 ")
		mrsleep(4000)
	end 

end


Colors.page_popup={}
Colors.page_popup.new_version_update={
	{  527,  192, 0xbcb09c},
	{  583,  194, 0x381e07},
	{  386,  274, 0x381e07},
	{  685,  423, 0xe3aa51},
}
Colors.page_popup.tips_ok1={}		
Colors.page_popup.tips_ok1.color={
	{  548,  190, 0x381e07},
	{  582,  188, 0x391f08},
	{  543,  417, 0xeabf6c},
	{  571,  419, 0xfef7d4},
}
Colors.page_popup.tips_ok1.logmsg="弹出提示信息"

Colors.page_popup.notice_ok1={}		
Colors.page_popup.notice_ok1.colors = {
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
Colors.page_popup.notice_ok1.logmsg="公告，点击确定"		



Colors.page_popup.close_window1={}		
Colors.page_popup.close_window1.color = {
	{ 1062,   51, 0xfef7b3},
	{ 1073,   50, 0xfef7b3},
	{ 1062,   64, 0xfef7b3},
	{ 1079,   58, 0x542210},
	{ 1067,   57, 0xfef7b3},
}
Colors.page_popup.close_window1.logmsg="活动窗口，点击关闭"

Colors.page_popup.close_welfare_window={}
Colors.page_popup.close_welfare_window.colors={
	{
		{  169,  104, 0xdea05c},
		{  261,  104, 0xde9f5c},
		{  238,   91, 0x68411f},
		{ 1081,   66, 0xfffab4},
	}
}
Colors.page_popup.close_welfare_window.end_color = true
Colors.page_popup.close_welfare_window.logmsg="关闭福利窗口"


Colors.page_popup.use_money={}		
Colors.page_popup.use_money.colors={
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
Colors.page_popup.use_money.logmsg="使用铜钱"	


Colors.page_popup.use={}
Colors.page_popup.use.colors={
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
Colors.page_popup.use_money.logmsg="使用"	


Colors.page_popup.first_scene={}		
Colors.page_popup.first_scene.color = {
	{  232,   33, 0x000000},
	{  509,   52, 0x000000},
	{  890,   48, 0x000000},
}
Colors.page_popup.first_scene.logmsg="跳过开场动画"	


Colors.page_popup.no_push_notice={}		
Colors.page_popup.no_push_notice.color = {
	{  392,  429, 0x007aff},
	{  429,  437, 0x007aff},
	{  472,  431, 0x007aff},
	{  433,  434, 0xd0cdcc},
	{  436,  445, 0x007aff},
}
Colors.page_popup.no_push_notice.logmsg="推送通知，不允许"	


Colors.page_popup.new_version_update={}
Colors.page_popup.new_version_update.color = {
	{  548,  190, 0x381e07},
	{  583,  197, 0x381e07},
	{  658,  414, 0xedc56f},
	{  678,  421, 0xfff8d5},
}

Colors.page_popup.new_version_update.logmsg="版本更新"

Colors.page_popup.put_on={}		
Colors.page_popup.put_on.color = {
	{  766,  447, 0xf0cc74},
	{  763,  465, 0xde9f49},
	{  785,  454, 0xfef7d3},
	{  799,  461, 0xfef6d3},
}
Colors.page_popup.put_on.logmsg="装备"	

Colors.page_popup.net_retry={}		
Colors.page_popup.net_retry.colors = {
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
Colors.page_popup.net_retry.logmsg="网络不稳，重试"	

Colors.page_popup.net_lost_window={}
Colors.page_popup.net_lost_window.color={
	{  460,  291, 0x381e07},
	{  474,  293, 0x391f08},
	{  487,  291, 0x381e07},
	{  511,  291, 0x381e07},
	{  568,  422, 0xe4ab52},
}
Colors.page_popup.net_lost_window.logmsg="与服务器断开连接，请检查网络"

Colors.page_popup.close_pop_window1={}		
Colors.page_popup.close_pop_window1.color ={
	{  941,  237, 0xd0bea5},
	{  949,  238, 0xd0bea7},
	{  941,  245, 0xead1b6},
	{  946,  243, 0xe5cfb2},
}
Colors.page_popup.close_pop_window1.logmsg="关闭异常弹窗"	



Colors.page_main={}
Colors.page_main.main_task_guide={}
Colors.page_main.main_task_guide.colors={
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
Colors.page_main.main_task_guide.click_xy={124,  244}
Colors.page_main.main_task_guide.logmsg="第一次追踪主任务"

Colors.page_main.main_task_chain={}
Colors.page_main.main_task_chain.colors={
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
Colors.page_main.main_task_chain.click_xy={124,  244}

Colors.page_main.main_task_chain.logmsg="追踪主任务"

Colors.page_main.main_task_completed={}
Colors.page_main.main_task_completed.color={
	{  112,  265, 0x07e804},
	{  116,  268, 0x00ff00},
	{  127,  266, 0x00ff00},
	{   15,  224, 0x00ff00},
	{   24,  229, 0x00ff00},
}
--Colors.page_main.main_task_completed.click_xy={124,  244}
Colors.page_main.main_task_completed.logmsg="点击主线-完成"


Colors.page_main.task_completed_guide={}
Colors.page_main.task_completed_guide.color={
	{  587,  450, 0xffffff},
	{  602,  448, 0xffff00},
	{  621,  446, 0xffff00},
	{  642,  450, 0xffffff},
}

Colors.page_main.task_completed_guide.logmsg="第一次完成任务"
Colors.page_main.task_completed_guide.click_xy={866,  454}

Colors.page_main.task_completed={}
Colors.page_main.task_completed.colors={{
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

Colors.page_main.task_completed.logmsg="完成任务"

Colors.page_main.backgroud={}
Colors.page_main.backgroud.colors={{
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
Colors.page_main.backgroud.logmsg="主界面背景，定时监控右上角，看是否移动"
Colors.page_main.backgroud.foo= function() 
	ltap(66,  246) --点击主线任务
	nLog("点击主线任务")
	--mrsleep(3000)
end

Colors.page_main.accept_task={}
Colors.page_main.accept_task.colors={{
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

Colors.page_main.accept_task.logmsg="接受任务"


Colors.page_main.arti_fact_piece_guide={}
Colors.page_main.arti_fact_piece_guide.colors={{
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
Colors.page_main.arti_fact_piece_guide.once= true
Colors.page_main.arti_fact_piece_guide.logmsg="领取神器碎片"
Colors.page_main.arti_fact_piece_guide.click_xy={463,  500}


Colors.page_main.arti_fact_preview_guide={}
Colors.page_main.arti_fact_preview_guide.colors={{
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

Colors.page_main.arti_fact_preview_guide.logmsg="预览神器"
Colors.page_main.arti_fact_preview_guide.click_xy={167,  497}

Colors.page_main.arti_fact_preview_close_guide={}
Colors.page_main.arti_fact_preview_close_guide.color={
	{  726,  177, 0xffff00},
	{  708,  175, 0xfefefe},
	{  737,  175, 0xf4f402},
	{  765,  171, 0xf4f4f3},
}

Colors.page_main.arti_fact_preview_close_guide.logmsg="关闭预览神器界面"
Colors.page_main.arti_fact_preview_close_guide.click_xy={934,  101}

Colors.page_main.arti_fact_close_guide={}
Colors.page_main.arti_fact_close_guide.color={
	{  826,  176, 0xfdfdfd},
	{  839,  174, 0xf4f401},
	{  855,  175, 0xf2f201},
	{  897,  167, 0xf7f7f7},
}

Colors.page_main.arti_fact_close_guide.logmsg="关闭神器预开启界面"
Colors.page_main.arti_fact_close_guide.click_xy={1062,  110}


Colors.page_main.picture_move={}
Colors.page_main.picture_move.color={
	{  461,   80, 0xc7a367},
	{  551,   86, 0xdab884},
	{  681,   87, 0xc69b61},
	{  728,  233, 0xd9af6e},
	{  402,  494, 0xcaaa68},
}
Colors.page_main.picture_move.logmsg="画像，拼接完整"
Colors.page_main.picture_move.foo = function()
	mrsleep(2000)
	xxtmoveto(215,  184,552,  185,1)
	mrsleep(2000)
	xxtmoveto( 218,  440,520,  462,1)
	mrsleep(2000)
	xxtmoveto(909,  314,631,  279,1)

end


Colors.page_main.picture_onemore={}
Colors.page_main.picture_onemore.color={
	{  477,  341, 0xa0af5d},
	{  491,  347, 0xfff8d5},
	{  519,  342, 0xfef7d3},
	{  541,  346, 0xfef7d4},
}
Colors.page_main.picture_onemore.logmsg="画像，再试一次"


Colors.page_main.menu_guide={}
Colors.page_main.menu_guide.color={
	{  871,  264, 0xfcfcfc},
	{  884,  264, 0xfbfb01},
	{  893,  262, 0xefef00},
	{  910,  262, 0xf9f900},
}
Colors.page_main.menu_guide.click_xy={1094,  350}
Colors.page_main.menu_guide.logmsg="打开功能菜单"

Colors.page_main.skill_menu_guide={}
Colors.page_main.skill_menu_guide.color={
	{  836,  439, 0xfefefd},
	{  849,  438, 0xfdfd00},
	{  858,  441, 0xfefe00},
	{  875,  439, 0xfefe00},
}
Colors.page_main.skill_menu_guide.click_xy={1089,  438}
Colors.page_main.skill_menu_guide.logmsg="打开技能界面"

Colors.page_main.auto_fighting_guide={}
Colors.page_main.auto_fighting_guide.color={
	{  569,  420, 0xffffff},
	{  584,  422, 0xfefe00},
	{  602,  417, 0xfcfc00},
	{  606,  425, 0xfdfd00},
}
Colors.page_main.auto_fighting_guide.click_xy={788,  523}
Colors.page_main.auto_fighting_guide.logmsg="打开自动挂机"

Colors.page_main.adopt_pet={}
Colors.page_main.adopt_pet.color={
	{  700,  503, 0xedc66f},
	{  704,  515, 0xe2a44c},
	{  718,  509, 0xfef7d3},
	{  730,  507, 0xfff8d5},
	{  736,  511, 0xfdf5d2},
}
Colors.page_main.adopt_pet.logmsg="领取宠物"

Colors.page_main.pet_menu={}
Colors.page_main.pet_menu.color={
	{  189,  124, 0xfaf9f8},
	{  202,  126, 0xfcfc00},
	{  211,  127, 0xfefe00},
	{  225,  127, 0xfdfd00},
}
Colors.page_main.pet_menu.click_xy={36,  127}
Colors.page_main.pet_menu.logmsg="宠物menu"

Colors.page_main.pet_menu_close_guide={}
Colors.page_main.pet_menu_close_guide.colors={
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
Colors.page_main.pet_menu_close_guide.click_xy={1082,   64}
Colors.page_main.pet_menu_close_guide.logmsg="关闭宠物界面"


Colors.page_main.choose_pet={}
Colors.page_main.choose_pet.color={
	{  491,  346, 0xfdf6d3},
	{  511,  345, 0xfcf5d2},
	{  532,  346, 0xfff8d5},
	{  557,  348, 0xfcf6d2},
}
Colors.page_main.choose_pet.logmsg="选择宠物"


Colors.page_main.big_skill={}
Colors.page_main.big_skill.color={
	{  705,  329, 0xf9f9f8},
	{  686,  329, 0xfdfdfc},
	{  724,  333, 0xf9f900},
	{  735,  329, 0xffff00},
}
Colors.page_main.big_skill.click_xy={925,  420}
Colors.page_main.big_skill.logmsg="释放绝世神功"

Colors.page_main.skill_upgrade_guide={}
Colors.page_main.skill_upgrade_guide.color={
	{  888,  468, 0xffffff},
	{  902,  470, 0xffff00},
	{  912,  470, 0xffff00},
	{  919,  472, 0xffff00},
}
Colors.page_main.skill_upgrade_guide.click_xy={919,  565}
Colors.page_main.skill_upgrade_guide.logmsg="升级技能"

Colors.page_main.skill_menu_close_guide={}
Colors.page_main.skill_menu_close_guide.color={
	{  872,  148, 0xfefefe},
	{  887,  150, 0xf5f502},
	{  901,  150, 0xf4f402},
	{  937,  150, 0xf1f0f0},
}
Colors.page_main.skill_menu_close_guide.click_xy={1082,   67}
Colors.page_main.skill_menu_close_guide.logmsg="关闭界面"

Colors.page_main.close_func_menu_guide={}
Colors.page_main.close_func_menu_guide.color={
	{  871,  260, 0xfdfdfd},
	{  886,  262, 0xe8e704},
	{  900,  262, 0xf6f700},
	{  979,  262, 0xfdfdfd},
}
Colors.page_main.close_func_menu_guide.click_xy={1094,  350}
Colors.page_main.close_func_menu_guide.logmsg="关闭功能菜单"


Colors.page_main.pet_go_fighting_guide={}
Colors.page_main.pet_go_fighting_guide.color={
	{  948,  446, 0xffff00},
	{  935,  449, 0xffffff},
	{  952,  456, 0xfdfd00},
	{  968,  455, 0xfdfd00},
}
Colors.page_main.pet_go_fighting_guide.click_xy={960,  558}
Colors.page_main.pet_go_fighting_guide.logmsg="点击出战珍兽"

Colors.page_main.adopt_horse={}
Colors.page_main.adopt_horse.color={
	{  351,  540, 0xfef6d3},
	{  358,  540, 0xfef7d3},
	{  365,  540, 0xfdf6d3},
	{  376,  539, 0xfdf5d2},
}
Colors.page_main.adopt_horse.logmsg="领取坐骑-黑玫瑰"

Colors.page_main.black_horse_active={}
Colors.page_main.black_horse_active.color={
	{  779,  452, 0xfef7d3},
	{  782,  458, 0xfef7d4},
	{  800,  454, 0xfef7d4},
	{  810,  462, 0xfef7d4},
}
Colors.page_main.black_horse_active.logmsg="黑玫瑰-激活"


Colors.page_main.exam_activity={}
Colors.page_main.exam_activity.color={
	{  442,  453, 0xb1a48e},
	{  872,  463, 0xb4a692},
	{  283,  434, 0xb1a38e},
	{  399,  266, 0xb1a58e},
	{  439,  239, 0xa1917e},
}
Colors.page_main.exam_activity.logmsg="科举考试5道题"

Colors.page_main.shop_buy_pos7={}
Colors.page_main.shop_buy_pos7.color={
	{  476,  449, 0xfdf5d2},
	{  479,  454, 0xfef6d3},
	{  495,  455, 0xfef7d3},
	{  504,  445, 0xfef7d3},
}
Colors.page_main.shop_buy_pos7.logmsg="商店购买净*砂"


Colors.page_main.buy_ok={}
Colors.page_main.buy_ok.color={
	{  551,  413, 0xfdf5d2},
	{  554,  422, 0xf9f0cb},
	{  560,  421, 0xfdf6d3},
	{  577,  419, 0xfef7d4},
}
Colors.page_main.buy_ok.logmsg="确定"

Colors.page_main.shenmifensha={}
Colors.page_main.shenmifensha.color={
	{  490,  342, 0xfef7d4},
	{  496,  347, 0xfdf6d3},
	{  504,  341, 0xfdf6d3},
	{  519,  343, 0xfef7d3},
}
Colors.page_main.shenmifensha.logmsg="神秘砂粉"

Colors.page_main.submit_task_needed={}
Colors.page_main.submit_task_needed.color={
	{  551,  489, 0xfdf6d3},
	{  556,  486, 0xfdf6d3},
	{  572,  485, 0xfff8d5},
	{  583,  485, 0xfff8d5},
}
Colors.page_main.submit_task_needed.logmsg="提交"

Colors.page_main.letter_deal_button={}
Colors.page_main.letter_deal_button.color={
	{  491,  344, 0xfef7d3},
	{  499,  350, 0xfdf6d3},
	{  511,  344, 0xfdf6d3},
	{  517,  346, 0xfdf6d3},
}
Colors.page_main.letter_deal_button.logmsg="擦拭信件"

Colors.page_main.clean_letter={}
Colors.page_main.clean_letter.color={
	{  384,   43, 0xffffff},
	{  397,   45, 0xfdfdfd},
	{  413,   43, 0xffffff},
	{  441,   37, 0xfbfbfb},
	{  462,   40, 0xffffff},
}
Colors.page_main.clean_letter.logmsg="慢慢擦拭信件"
Colors.page_main.clean_letter.foo= function()
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



Colors.page_email={}
Colors.page_email.email_icon={}
Colors.page_email.email_icon.color={
	{  334,  587, 0x6f5233},
	{  334,  583, 0x72523d},
	{  341,  611, 0x725136},
	{  350,  601, 0x6f4e37},
}
Colors.page_email.email_icon.logmsg="主界面底部邮件图标"

Colors.page_email.sys_email={}
Colors.page_email.sys_email.colors={
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
Colors.page_email.sys_email.logmsg="点击邮件灯笼"

Colors.page_email.receive_email={}
Colors.page_email.receive_email.colors={
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
Colors.page_email.receive_email.logmsg="一键领取"
Colors.page_email.receive_email.end_color = true
Colors.page_email.receive_email.foo = function ()
	ltap(396,  574) --click 一键领取
	mrsleep(3000)
	ltap(1081,   67) --click 关闭邮件窗口
end


Colors.page_welfare={}
Colors.page_welfare.welfare_find_back={}
Colors.page_welfare.welfare_find_back.colors={
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
Colors.page_welfare.welfare_find_back.logmsg="福利找回"

Colors.page_welfare.no_resource={}
Colors.page_welfare.no_resource.colors={
	{
		{  662,  185, 0x381e07},
		{  670,  182, 0x381e07},
		{  687,  182, 0x3a2009},
		{  684,  187, 0x3b210a},
		{ 1081,   67, 0xfffbb3},
	}}
Colors.page_welfare.no_resource.logmsg="暂无资源可找回,点击关闭福利窗口"
Colors.page_welfare.no_resource.end_color= true


Colors.page_welfare.scroll_bottom={}
Colors.page_welfare.scroll_bottom.colors={
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
Colors.page_welfare.scroll_bottom.logmsg="直接下拉到底部"
Colors.page_welfare.scroll_bottom.end_color= true
Colors.page_welfare.scroll_bottom.foo = function()	
	xxtmoveto(683,  432,685,  208,5)
	mrsleep(3000)
	xxtmoveto(683,  432,685,  208,5)
	mrsleep(3000)
	xxtmoveto(683,  432,685,  208,5)
end

Colors.page_welfare.datu_show={}
Colors.page_welfare.datu_show.colors={
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
Colors.page_welfare.datu_show.logmsg="完美找回-逞凶打图"


Colors.page_welfare.find_back_close={}
Colors.page_welfare.find_back_close.colors={
	{
		{  185,  478, 0x68411f},
		{  193,  479, 0x68411f},
		{  230,  475, 0x68411f},
		{ 1081,   66, 0xfffab4},
		{ 1077,   62, 0xfff7b5},
	}}
Colors.page_welfare.find_back_close.end_color = true
Colors.page_welfare.find_back_close.logmsg="已找回的话，关闭窗口"


Colors.page_welfare.datu_popup={}
Colors.page_welfare.datu_popup.colors={
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
Colors.page_welfare.datu_popup.foo = function ()
	ltap(691,  533) --点击找回按钮
	mrsleep(3000)
	ltap(1080,   65) --关闭福利窗口
end
Colors.page_welfare.datu_popup.logmsg="弹窗-完美找回-逞凶打图"
Colors.page_welfare.datu_popup.end_color = true

Colors.page_bag={}
Colors.page_bag.bag_icon={}
Colors.page_bag.bag_icon.colors={
	{
		{  993,  350, 0xd2aa50},
		{  995,  357, 0xcc943b},
		{ 1005,  347, 0xad7137},
		{ 1014,  358, 0xd57231},
		{ 1011,  366, 0xf9f3e2},
	}}
Colors.page_bag.bag_icon.logmsg="点击背包"

Colors.page_bag.pack_bag={}
Colors.page_bag.pack_bag.color={
	{  668,  563, 0xf3d077},
	{  812,  562, 0xf2d279},
	{  929,  567, 0xf0c872},
	{  966,  577, 0xfef7d4},
}
Colors.page_bag.pack_bag.foo = function()
	ltap(966,  577) --点击整理
	mrsleep(3000)
	ltap(871,   92) --点击材料页签
end
Colors.page_bag.pack_bag.logmsg="背包主界面，点击整理,然后点击材料"

material_color = {
	{  845,  100, 0xd49c5a},
	{  866,   90, 0x68411f},
	{  874,   90, 0x68411f},
	{  885,   95, 0x694220},
}
Colors.page_bag.material1={}
Colors.page_bag.material1.color=material_color
Colors.page_bag.material1.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排1"
Colors.page_bag.material1.click_xy={650,  159}

Colors.page_bag.material2={}
Colors.page_bag.material2.color=material_color
Colors.page_bag.material2.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排2"
Colors.page_bag.material2.click_xy={733,  160}

Colors.page_bag.material3={}
Colors.page_bag.material3.color=material_color
Colors.page_bag.material3.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排3"
Colors.page_bag.material3.click_xy={814,  160}

Colors.page_bag.material4={}
Colors.page_bag.material4.color=material_color
Colors.page_bag.material4.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排4"
Colors.page_bag.material4.click_xy={899,  163}

Colors.page_bag.material5={}
Colors.page_bag.material5.color=material_color
Colors.page_bag.material5.logmsg="材料页签，开始从背包第一个材料逐个按顺序点击,暂时点击前两排5"
Colors.page_bag.material5.click_xy={988,  162}

Colors.page_bag.close_bag={}
Colors.page_bag.close_bag.color={
	{  826,  562, 0xf2d179},
	{  932,  567, 0xefc871},
	{  671,  562, 0xf3d379},
	{ 1081,   67, 0xfffbb3},
}
Colors.page_bag.close_bag.end_color =  true
Colors.page_bag.close_bag.logmsg="遍历背包完毕，关闭窗口"

Colors.page_xishi={}
Colors.page_xishi.popup={}
Colors.page_xishi.popup.colors={
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
Colors.page_xishi.popup.logmsg="目标出世，宝图在手，啥也不愁"
Colors.page_xishi.popup.click_xy={1081,   66}


Colors.page_next_charactor={}
Colors.page_next_charactor.setup={}
Colors.page_next_charactor.setup.colors={
	{
		{  868,  621, 0xe1bf71},
		{  856,  620, 0xf1cf82},
		{  872,  613, 0xf3e7cd},
		{  869,  586, 0xffea8f},
	}}
Colors.page_next_charactor.setup.logmsg="开始切换下一个角色，点击底部设置按钮"

Colors.page_next_charactor.change_account={}
Colors.page_next_charactor.change_account.color = {
	{  809,  310, 0xfff8d5},
	{  815,  313, 0xfff8d5},
	{  833,  315, 0xfff8d5},
	{  844,  314, 0xfff8d5},
	{  860,  321, 0x758b4a},
}
Colors.page_next_charactor.change_account.logmsg="点击更换账号"

Colors.page_next_charactor.change_account_ok={}
Colors.page_next_charactor.change_account_ok.color = {
	{  674,  418, 0xfef7d3},
	{  680,  421, 0xfcf4d1},
	{  697,  419, 0xfef7d4},
	{  695,  428, 0xfff8d5},
}
Colors.page_next_charactor.change_account_ok.end_color = true
Colors.page_next_charactor.change_account_ok.logmsg="确定更换账号"

Colors.page_next_charactor.func_menu={}
Colors.page_next_charactor.func_menu.colors={
	{
		{ 1088,  343, 0x6d4c31},
		{ 1099,  343, 0x6f4e31},
		{ 1088,  354, 0x6a4a33},
		{ 1100,  355, 0x6f5035},
	}}
Colors.page_next_charactor.func_menu.end_color = true
Colors.page_next_charactor.func_menu.logmsg="开始切换下一个角色，点击功能菜单"


Colors.page_clear={}
Colors.page_clear.welfare_window={}
Colors.page_clear.welfare_window.colors={
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
--Colors.page_clear.welfare_window.once= true
Colors.page_clear.welfare_window.foo2 = function() return "welfare_window" end
Colors.page_clear.welfare_window.logmsg="在领取邮件之前，关闭福利弹窗"


Colors.page_close={}
Colors.page_close.all_big_window={}
Colors.page_close.all_big_window.colors = {
	{
		{ 1076,   61, 0xfff5b3},
		{ 1085,   62, 0xfef8b2},
		{ 1080,   69, 0xfef7af},
	}
}
Colors.page_close.all_big_window.logmsg="关闭所有窗口"

Colors.page_main_task={}
Colors.page_main_task.task_button={}
Colors.page_main_task.task_button.colors={
	{
		{   32,  187, 0x68411f},
		{   41,  188, 0x68411f},
		{   59,  181, 0x704924},
		{   59,  191, 0x68411f},
	}
}
Colors.page_main_task.task_button.logmsg="进入游戏主界面"
Colors.page_main_task.task_button.foo2=function() 
	--nLog("进入游戏主界面")
	return "player_in"
end

return Colors