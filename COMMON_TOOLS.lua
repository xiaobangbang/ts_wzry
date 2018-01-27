local common={
trim =function (s)
	return (s:gsub("^%s*(.-)%s*$", "%1"))
end
,
split = function (input, delimiter)
	--print("string.split(input, delimiter)")
	--nLog("tools.split")
	input = tostring(input)
	delimiter = tostring(delimiter)
	if (delimiter=='') then return false end
	local pos,arr = 0, {}
	-- for each divider found
	for st,sp in function() return string.find(input, delimiter, pos, true) end do
		table.insert(arr, string.sub(input, pos, st - 1))
		pos = sp + 1
	end
	table.insert(arr, string.sub(input, pos))
	return arr
end
,
string2time = function ( timeString )  
    local Y = string.sub(timeString , 1, 4)  
    local M = string.sub(timeString , 6, 7)  
    local D = string.sub(timeString , 9, 10)  
	local HH = string.sub(timeString , 12, 13)  
	local MI = string.sub(timeString , 15, 16)  
	local SS = string.sub(timeString , 17, 18)  
    return os.time({year=Y, month=M, day=D, hour=HH,min=MI,sec=SS})  
end 
,
print_r = function  ( t )
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val)=="string") then
                        print(indent.."["..pos..'] => "'..val..'"')
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    if (type(t)=="table") then
        print(tostring(t).." {")
        sub_print_r(t,"  ")
        print("}")
    else
        sub_print_r(t,"  ")
    end
    print()
end

,
fetch_v = function  ( t,k )
	local v
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val)=="string") then
                        print(indent.."["..pos..'] => "'..val..'"')
						if pos==k then
							v = val
							break
						end
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
						if pos==k then
							v = tostring(val)
							break
						end
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    if (type(t)=="table") then
        print(tostring(t).." {")
        sub_print_r(t,"  ")
        print("}")
    else
        sub_print_r(t,"  ")
    end
    print()
	return v
end

,

table_to_str =function (t)
	local str=""
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
			str = str..indent.."*"..tostring(t)
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
						str = str..indent.."["..pos.."] => "..tostring(t).." {"
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
						str = str..indent..string.rep(" ",string.len(pos)+6).."}"
                    elseif (type(val)=="string") then
                        print(indent.."["..pos..'] => "'..val..'"')
						str = str..indent.."["..pos..'] => "'..val..'"'
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
						str = str..indent.."["..pos.."] => "..tostring(val)
                    end
                end
            else
                print(indent..tostring(t))
				str = str..indent..tostring(t)
            end
        end
    end
    if (type(t)=="table") then
        print(tostring(t).." {")
		str = str..tostring(t).." {"
        sub_print_r(t,"  ")
        print("}")
		str = str.."}"
    else
        sub_print_r(t,"  ")
    end
    print()		
	return str
end
,
write_object_to_file = function (o,filename_with_path)
	local out =assert(io.open(filename_with_path,"w"))
	out:write("VALUE1 = ")
	f_abc = function(o)
		if type(o) == "number" then
			out:write(o)
		elseif type(o) == "string" then
			out:write(string.format("%q",o) )		
		elseif type(o) == "boolean" then
			if o ==true then
				out:write( "true")
			else
				out:write( "false")
			end
		elseif type(o) == "table" then		
			out:write("{\n")
			for k,v in pairs(o) do
				out:write(" ",k,"=")
				f_abc(v)
				out:write(",\n")
			end
			out:write("}\n")
		else
			error("cannot serialize a "..type(o))
		end
	end

	f_abc(o)
	assert (out:close())

end
,
getRandomNum = function (n1)	
	local n2 = n1 or 1000
	math.randomseed(tostring(os.time()):reverse():sub(1, 7))
	local var1 = math.random(1,n2) 		
	return var1
end
,
record_var1 = function (o,file)
	local out =assert(io.open(file,"w"))
	out:write("VAR_LIST1 = ")
	f_abc = function(o)
		if type(o) == "number" then
			out:write(o)
		elseif type(o) == "string" then
			out:write(string.format("%q",o) )		
		elseif type(o) == "boolean" then
			if o ==true then
				out:write( "true")
			else
				out:write( "false")
			end
		elseif type(o) == "table" then		
			out:write("{\n")
			for k,v in pairs(o) do
				out:write(" ",k,"=")
				f_abc(v)
				out:write(",\n")
			end
			out:write("}\n")
		else
			error("cannot serialize a "..type(o))
		end
	end

	f_abc(o)
	assert (out:close())
end
}

return common