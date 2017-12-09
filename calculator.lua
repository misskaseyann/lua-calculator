print("\n\nWELCOME TO THE LUA CALCULATOR")
print("-----------------------------")
print("Enter 'Q' to quit.")
print("\n")

function calculate(num)
	print("Enter an operator: ")
	operator = io.read()
	if operator == '=' then
		print(num)
	elseif operator == '+' then
		print("Enter a number: ")
		local input = io.read()
		if not tonumber(input) then
			print("Not a number, try again.")
		else
			calculate(num + input)
		end
	end
end

while true do
	print("Enter a number: ")
	local input = io.read()
	if input == 'Q' or input == 'q' then
		print("Quitting...")
		break
	elseif not tonumber(input) then
		print("Not a number, try again.")
	else
		sum = calculate(input)
	end
end