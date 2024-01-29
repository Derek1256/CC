function openBase(username)
    redstone.setOutput("right", true)
    print("Base opened.")
    login(username, true)
    return
end
function login(username, baseOpened)
    for i=1,20 do
    print("")
    end
	if baseOpened then
		print("Base door opened.")
		print("")
	end
	print("Welcome back, "..username)
	print("")
    print("What would you like to do?")
	print("")
    print("Open Control Room (ocr)")
    print("Logout (logout)")
    t = io.read()
    if string.lower(t) == "logout" then
        for i=1,20 do
            print("")
        end
        redstone.setOutput("right", false)
        shell.run("Legion")
        return
    elseif string.lower(t) == "ocr" then
        openBase(username)
        return
    end
end


print("Welcome User, please enter passcode")
p = io.read()
if p == "flooringisass" then
    login("Derek1256", false)
	return
elseif p == "Penis" then
	login("MCDanntheman", false)
	return
elseif p == "dannisfat" then
    login("DuckyProgrammer", false)
	return
elseif p == "youdidntseegraphite" then
    login("TulpGui", false)
    return
else
    for i=1,20 do
		print("")
    end
    print("Incorrect password.")
    shell.run("Legion")
    return
end