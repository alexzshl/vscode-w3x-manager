require "io"

local f = assert(io.open("test.txt", "w+"))
f:write("hello")
f:write("中文测试test")
f:close()

