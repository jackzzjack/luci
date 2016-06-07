module("luci.controller.myapp.mymodule2", package.seeall)

function index()
	page = entry({"myapp", "mymodule2"},
				alias("myapp", "mymodule2", "time.htm"), "My Module2");
	page.dependent = false

	page = entry({"myapp", "mymodule2", "time.htm"},
				template("myapp_mymodule2/time"), "Time")
	page.dependent = false
	page.leaf = true
end
