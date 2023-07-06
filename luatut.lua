-- IO / PRINTING =======================================
print("hello world")



-- COMMENTS ============================================================
-- this is a single line comment
--[[
-- multiline
-- comment
--]]


-- VARIABLES ==========================================================
-- vars can have nums but they are going to contain letters, numbers and underscores

name = "Derek" -- dynamic inference of type

io.write("size of string", #name , "\n", "jafoisjfsoife \n")



-- DATA TYPES =========================================================

-- number (floating point)
--decimal precision upto 13 chars

string = "string"
longString = [[jadfj asoifjasef
ajfeoajesofjiaosejif
faeofjaosejfase
faofnoainsefonaeof]]

-- concatenation operator is ..

io.write(longString .. name)

-- boolean (true and false)
isAbleToDrive = true

io.write(type(isAbleToDrive), "\n")

io.write(type(madeUpVar), "\n")
-- default value for variables is nil



-- MATHS ================================================

io.write("5 + 3 = ", 5+3, "\n")
io.write("5 - 3 = ", 5-3, "\n")
io.write("5 * 3 = ", 5*3, "\n")
io.write("5 / 3 = ", 5/3, "\n")
io.write("5.2 % 3 = ", 5%3, "\n")

-- NOTE: SHORTHAND NOTATIONS ARE NOT ALLOWED (--, ++, +=, -+)

-- [[Math functions in lua: floor, ceil, max, min, sin, cos, tan, asin
  -- ,acos, exp, log, .log10, pow, sqrt, random, randomseed]]

io.write("floor(2.345) : ", math.floor(2.345), "\n")
io.write("ceil(2.345) : ", math.ceil(2.345), "\n")
io.write("max(2,3) : ", math.max(2,3), "\n")
io.write("math.random() : ", math.random(), "\n")


-- OPERATORS ==============================================


-- Relational Operators:  >  <  >=  <=  ==  ~=
-- Logical Operators : and  |  or  |  NOT


-- CONDITIONALS ==============================================

age = 13
if age < 13 then
  io.write("You can go to school", "\n")
elseif (age <= 16) and (age < 18) then
  io.write("You can drive", "\n")
else
  io.write("You can vote", "\n")
end

-- if statement in a single line
if(age < 14) or (age > 67) then io.write("You shouldn't work\n") end


-- NOTE: There is no ternary operator in LUA

-- canVote = age > 18 ? true : false (Normal implementation)

canVote = age > 18 and true or false -- (Lua implementation)


-- VARIABLES TYPE FORMATTING =======================================================

print(string.format("not true = %s", tostring(not true)))


-- STRING OPERATIONS ===============================================================

quote = "I changed my password to incorrect. So that when I forget ..."

io.write("Quote Length ", string.len(quote), "\n")
io.write("Quote Length ", string.len(quote), "\n")
io.write("Replace I with me ", string.gsub(quote, "I", "me"), "\n")
io.write("Index of password : ", string.find(quote, "password"), "\n")
io.write("Quote Uppercase : ", string.upper(quote), "\n")
io.write("Quote Lowercase : ", string.lower(quote), "\n")



-- LOOPING IN LUA =======================================================

-- While loop
i = 1
while i<=10 do
  io.write(i)
  i = i+1
  if i == 8 then break end
end
print("\n")


-- repeat or do while loop
repeat
  io.write("Enter your guess : ")
  guess = io.read()
until tonumber(guess) == 15


-- for loop
for i = 1, 10, 1 do
  io.write(i)
end


-- iterating over an array
months = {"January", "February", "March", "April", "June", "July", "August", "September",
  "October", "November", "December"
}
for key, value in pairs(months) do
  io.write(value, " ")
end






-- TABLE ==================================================================
-- A table in lua can take the shape of arrays, tuples, object, dictionaries etc...

aTable = {}
for i =1, 10 do
  aTable[i] = i
end

io.write("First : ", aTable[1], "\n")

io.write("Number of Items : ", #aTable, "\n")

table.insert(aTable, 1, 0)

print(table.concat(aTable, ", "))

table.remove(aTable, 1)
print(table.concat(aTable, ", "))


aMultiTable = {}
for i = 0,9 do
  aMultiTable[i] = {}
  for j = 1, 9 do
    aMultiTable[i][j] = tostring(i) .. tostring(j)
  end
end

io.write("Table[0][0] : ", aMultiTable[1],[2])
for i = 0, 9 do
  for j= 0, 9 do
    io.write(aMultiTable[i][j], " : ")
  end
  print()
end




-- FUNCTIONS =============================================================

function getSum(num1, num2)
  return num1 + num2
end
print(string.format("5 + 2 = %d", getSum(5, 2)))


function splitStr(theString)
  stringTable = {}
  local i = 1
  for word in string.gmatch(theString, "[^%s]+") do
    stringTable[i] = word
    i = i + 1
  end
  return stringTable, i
end


splitStrTable, numOfStr = splitStr("The Turtle")
for j = 1, numOfStr do
  print(string.format("%d : %s", j, splitStrTable))
end



-- CLOSURES ===========================================================

function outerFunc()
  local i = 0
  return function ()
    i = i + 1
    return i
  end
end

getI = outerFunc()
print(getI())


-- COROUTINES ==============================================================

co = coroutine.create(function ()
  for i = 1,10,1 do
    print(i)
    print(coroutine.status(co))
    if i == 5 then
      coroutine.yield()
    end
  end
end)

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))

co2 = coroutine.create(function()
  for i = 101, 110, 1 do
    print(i)
  end
end)

coroutine.resume(co2)
coroutine.resume(co)




-- FILE IO ====================================================================

-- Different ways to work with files
-- r: Read only (default)
-- w: Overwrite or create a new file
-- a: append or create a new file
-- r+: Read & write existing file
-- w+: Overwrite read or create a file
-- a+: Append read or create file

file = io.open("test.lua", "w+")
file:write("Random String of text \n")

file:write("Some more text\n")

file:seek("set", 0)

print(file: read("*a"))

file:close()

file = io.open("text.lua", "a+")

file:write("Even more text\n")

file:seek("set", 0)

print(file:read("*a"))

file:close()



-- Modules ============================================================

convertModule = require("convert")

print(string.format("%.3f cm", convertModule.ftToCm(12)))


-- 


