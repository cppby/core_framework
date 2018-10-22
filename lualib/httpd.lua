local class = require "class"
local req = require "internal.req"
local resp = require "internal.resp"

local socket = core_socket
local ti = core_timer

local co_create = coroutine.create
local co_resume = coroutine.resume
local co_yield = coroutine.yield
local co_status = coroutine.status


local http = class("http")

function http:ctor(opt)
	self.fd   = opt.fd
	self.addr = opt.addr
	self.req  = req:new()
	self.resp = resp:new()
end


local httpd = class("httpd")

function httpd:ctor(opt)
		
end

-- 注册路由 --
function httpd:use(url, cb)
	-- body
end

-- 解析请求 --
function httpd:request_parser(data)
	-- body
end

function httpd:listen(port)
	return socket.listen(port, function(fd, addr)

	end)
end

function httpd:start(ip, port)
	return self:listen(port)
end

return httpd