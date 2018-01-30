local thread = require('thread')
local thread_id = thread.create(function()
		--创建子协程
		local flag1,flag2
		local sub_thread_id_1,sub_thread_id_2

		for i=1,20 do
			flag1 = i%3
			flag2 = i%7
			if flag1 == 0 then 
				thread.stop(sub_thread_id_1)
				mSleep(3000)
				sub_thread_id_1 = thread.createSubThread(function()
						--mSleep(3000)
						--因为sub thread 1比parent thread运行时间短，所以以下代码会被执行
						toast("sub thread 1 over",3)
					end)
			end
			if flag2 == 0 then 
				thread.stop(sub_thread_id_2)
				mSleep(3000)
				sub_thread_id_2 = thread.createSubThread(function()
						--创建子协程的子协程
						
						--mSleep(6000)
						--因为sub thread 2比parent thread运行时间长，所以以下代码实际执行不到
						toast("sub thread 2 over",3)
					end)
			end
			mSleep(4000)
			toast("parent thread over",3)
		end

	end)
thread.waitAllThreadExit()--等待所有协程结束，只能用于主线程