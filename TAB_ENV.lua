local TAB_ENV={
	DEBUG_MODE =true,
	LOG_MODE =true,
	WX_USER="oR2LbwALAA43VxqMtW0dI1H71AqM",
	adventure_hours={start_hour=8,start_min=25,stop_hour=8,stop_min=43},
	pvc_hours={start_hour=00,start_min=00,stop_hour=1,stop_min=15},
	LUA_VERSION="TOUCH", --XXT
	log_file = "tianlong.log",
	iphone_path="/var/mobile/Media/TouchSprite/lua/",
	SCRIPT_VERSION = "1.0.0",
	--没有找到稀世，等待xx秒切换下一个角色
	CHANGE_TIME=90,
--选区
	STUDIO_PARA_DAQU= 25,

--画面静止检测的时间间隔--单位秒
	STANDING_SECONDS= 5
}

return TAB_ENV