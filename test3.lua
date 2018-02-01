require("TSLib")
init(1)

mSleep(1000)


--moveTowards(  137,  505,70,2000)
while true do 
	mSleep(1000)

	if multiColor({{ 1018,  533, 0xc8edf9},{ 1030,  537, 0xb0dbf4},{ 1046,  558, 0x76b5d9},}) then 
		if multiColor({{  558,    7, 0xb8312b},{  560,    8, 0xc13631},{  558,   12, 0x8e2b2a},{  559,   14, 0x79292a},}) then
			tap(1046,  558)
		else
			moveTowards(  137,  505,70,2000)	
			tap(1046,  558)

		end

		mSleep(1000)

	end

--红色血条-带蓝条-地方英雄
--
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
		--{{  787,  497, 0x1e9dda},{  855,  378, 0x1e9ddb},{  974,  309, 0xecc518},{  120,  259, 0x9a6b50},{  117,  326, 0x3c45a4},}
		--没有敌人，升级技能和装备
		toast("没有敌人，升级技能和装备",1)
		tap(787,  497)
		mSleep(200)
		tap(855,  378)
		mSleep(200)
		tap(974,  309)
		mSleep(200)
		tap(120,  259)
		mSleep(200)
		tap(117,  326)
		mSleep(200)
		tap(787,  497) --普攻
	end
end

