require "a"

__test__("asdasdasd")
hello()

for k,v in pairs(_G) do
    print(k,v)
end

print(_VERSION)

mmm = require "_module"

mmm.Student:showName()
mmm.Student:showAge()
mmm.Student:grow()
mmm.Student:showAge()