local tools = {}

tools.print_r = function ( t )
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



 tools.table_to_str =function(t)
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

return tools