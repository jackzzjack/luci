module("luci.controller.myapp.mymodule", package.seeall)

function index()
	page = entry({"myapp", "mymodule", "time.htm"}, call("action_name"))

	page.dependent = false
	page.leaf = true
end

function action_name()
	luci.http.prepare_content('text/html')
	luci.http.write('<h1>Hello LuCI</h1>')
	luci.http.write('<h2>Current Time: ' .. os.date("%D %T") .. '</h2>')
end
