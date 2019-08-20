print("hello lua")

map = {}

map = {'red', 'yellow', 'alex'}
map[5] = "start"
-- map["one_key"] = 'hello'

table.insert(map, 'green')
table.sort(map)

for k,v in ipairs(map) do
    print(k, v)
end

print()

map = {}
map[1] = "hello"
map[3] = 'lua'
map['hero'] = "amkg"
table.insert(map, 'insert')
table.insert(map, 'insert')
table.insert(map, 'insert')
print(map['hero'])
print(map[1])
print(map[10])
for k,v in pairs(map) do
    print(k, v)
end

-- require "_module"
-- print(mod.AGE)
-- print(mod.hello())

for k,v in ipairs(package.loaded) do
    print(k,v)
end








