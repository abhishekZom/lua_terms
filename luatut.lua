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











