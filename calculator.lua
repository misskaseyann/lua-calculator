-----------------------------------------------------------------
-- Basic command line calculator in order to demonstrate Lua.
--
-- This calculator continuously takes user input until the user
-- asks to quit. A running tally is made of the calculation until
-- the user types the '=' operator.
-- This calculator supports '+', '-', '*', '/', and '^' for both
-- floating point and integer numbers.
--
-- Written by Kasey Stowell in 2017.
-----------------------------------------------------------------

print("\n\nWELCOME TO THE LUA CALCULATOR")
print("-----------------------------")
print("Enter 'Q' to quit.")
print("\n")

-----------------------------------------------------------------
-- Calculate function which recursively calculates values until
-- there is an error or the user types the '=' operator.
--
-- @num integer or floating point value.
-----------------------------------------------------------------
function calculate(num)
	print("Enter an operator: ")
	operator = io.read()
	if operator == '=' then
		print(num)
	elseif operator == '+' then
		print("Enter an operand: ")
		local input = io.read()
		if not tonumber(input) then
			print("Not an operand, try again.")
		else
			calculate(num + input)
		end
	elseif operator == '-' then
		print("Enter an operand: ")
		local input = io.read()
		if not tonumber(input) then
			print("Not an operand, try again.")
		else
			calculate(num - input)
		end
	elseif operator == '*' then
		print("Enter an operand: ")
		local input = io.read()
		if not tonumber(input) then
			print("Not an operand, try again.")
		else
			calculate(num * input)
		end
	elseif operator == '/' then
		print("Enter an operand: ")
		local input = io.read()
		if not tonumber(input) then
			print("Not an operand, try again.")
		elseif input == '0' then
			print("Cannot divide by zero, try again.")
		else
			calculate(num / input)
		end
	elseif operator == '^' then
		print("Enter an operand: ")
		local input = io.read()
		if not tonumber(input) then
			print("Not an operand, try again.")
		else
			calculate(num ^ input)
		end
	end
end

-----------------------------------------------------------------
-- Start loop.
-----------------------------------------------------------------
while true do
	print("Enter an operand: ")
	local input = io.read()
	if input == 'Q' or input == 'q' then
		print("Quitting...")
		break
	elseif not tonumber(input) then
		print("Not an operand, try again.")
	else
		sum = calculate(input)
	end
end