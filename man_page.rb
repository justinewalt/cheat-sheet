# Main Menu is Defined in a method
def menu
	puts "--- Cheat Sheet ---"
	puts "1: Command Line"
	puts "2: Search"
	puts "3: Exit"
	user_input
end


# Command Line Menu is Defined in a method
def command_line_menu
	puts "--- Command Line Menu ---"
	puts "1: mv"
	puts "2: cp"
	puts "3: mkdir"
	puts "4: ls"
	puts "5: rm"
	puts "6: Main Menu"
	user_input_command_line_menu
end


# User Input from the Command Line is obtained here, and then sent on via (passby) to command_line_input_logic
def user_input_command_line_menu
	command_line_input = gets.strip.to_i
	command_line_input_logic(command_line_input)
end


# Command Line Input Logic is run here and gets the information from the Command Line Menu via (passby)
# The user will make their selection and then get taken to that manuel page, or be get a prompt saying they're dumb and didn't choose an acceptable input.
def command_line_input_logic(passby)
	case passby
		when 1
			puts `man mv`
		when 2
			puts `man cp`
		when 3
			puts `man mkdir`
		when 4
			puts `man ls`
		when 5
			puts `man rm`
		when 6
			menu
		else
			puts "Please make a selection between 1 - 6!"
	end
	command_line_menu
end


# This is the Search Method defined
def search
	user_search = gets.strip.downcase
	search_input(user_search)
end


# This is the logic for my search function :)
def search_input(passthrough)		
	case passthrough
		when "mv"
			puts `man mv`
		when "cp"
			puts `man cp`
		when "mkdir"
			puts `man mkdir`
		when "ls"
			puts `man ls`
		when "rm"
			puts `man rm`
		else	
			puts "Not a valid search term. Common search terms are: 'mv', 'cp', 'mkdir', 'ls', 'rm'."
		search
	end
	menu
end



# User Input is where I get the intial feedback from the Users on what they want to do from the Main Menu
def user_input
	user_selection = gets.strip.to_i
	input_logic(user_selection)
end


# Input logic is taking the input the user gave us from the Main Menu, and will transfer them to their selection; (either: command_line_menu; search; exit)
def input_logic(value_from_user_input_method)
	case value_from_user_input_method
		when 1
			command_line_menu
		when 2
			search
		when 3
			puts "GOODBYE"
			exit(0)
		else
			puts "Please make a selection between 1-3. Typing anything else will only show you this message again."
			menu
	end
end




def run_program
	menu
end

run_program
