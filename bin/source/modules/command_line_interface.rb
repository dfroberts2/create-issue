module CommandLineInterface
	def prompt_username
		print 'Enter username: '
		gets.chomp
	end

	def prompt_password
		print 'Enter password: '
		STDIN.noecho(&:gets).chomp
	end

	def prompt_url
		print 'Enter repository URL (http or https): '
		gets.chomp
	end

	def prompt_title
		print 'Enter issue title (required): '
		title = gets.chomp
		if title == ""
			prompt_title 
		else
			return title
		end
	end

	def prompt_body
		print 'Enter issue body: '
		gets.chomp
	end
end