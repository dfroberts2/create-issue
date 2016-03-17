module CommandLineInterface
	def prompt_username
		puts 'Enter username:'
		gets.chomp
	end

	def prompt_password
		puts 'Enter password:'
		STDIN.noecho(&:gets).chomp
	end

	def prompt_url
		puts 'Enter repository URL (http or https):'
		gets.chomp
	end

	def prompt_title
		puts 'Enter issue title (required):'
		title = gets.chomp
		if title == ""
			prompt_title 
		else
			return title
		end
	end

	def prompt_body
		puts 'Enter issue body:'
		gets.chomp
	end
end