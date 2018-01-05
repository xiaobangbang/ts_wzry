
function upload_wx1(file_name) 
	local ret = false
	local done, info = ftp.upload(XXT_PHONE_PATH..file_name, "ftp://dabing6688:qkf3bj36r0yt@ftp.sinacloud.com/"..file_name, 10, true, function(binfo)
			local percent = math.floor(((binfo.start_pos + binfo.size_upload) / binfo.resource_size) * 100)
			sys.toast("上传进度 "..percent.."%")
		end, 4096 * 1024)
	if (done) then
		if (info.start_pos + info.size_upload < info.resource_size) then
			sys.alert(
				"上传中断\n本次上传 "..info.size_upload.." 字节"
				.."\n从第 "..info.start_pos.." 字节开始上传"
				.."\n平均速度为 "..math.floor(info.speed_upload/1024).." kB/s"
				.."\n还有剩 "..(info.resource_size - (info.start_pos + info.size_upload)).." 字节"
			)
		else
			--[[
			nLog(
				"上传完成\n本次上传 "..info.size_upload.." 字节"
				.."\n从第 "..info.start_pos.." 字节开始上传"
				.."\n平均速度为 "..math.floor(info.speed_upload/1024).." kB/s"
			)
			--]]
			ret =  true
		end
	else
		nLog("连接失败："..info)
	end
	return ret
end

function download_wx1(file_name) 
	local ret = false
	local done, info = ftp.download("ftp://dabing6688:qkf3bj36r0yt@ftp.sinacloud.com/"..file_name, XXT_PHONE_PATH..file_name)
	if (done) then   
		ret = true
        --[[
		nLog(
            "下载完成\n本次下载 "..info.size_download.." 字节"
            .."\n从第 "..info.start_pos.." 字节开始下载"
            .."\n平均速度为 "..math.floor(info.speed_download/1024).." kB/s"
        )   
		--]]
	else
		nLog("连接失败："..info)
	end
	return ret
end
