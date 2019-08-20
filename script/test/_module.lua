mod = {}

mod.Student = {
    name = 'alex',
    age = 13,
    PI = 3.14,
    showName = function (self)
        print("my name is", self.name)
    end,
    grow = function (self)
        self.age = self.age + 1
    end,
    showAge = function (self)
        print("my age is ", self.age)
    end
}

local function localfunc()
    print("test")
end

return mod