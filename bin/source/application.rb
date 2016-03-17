class Application
	include CommandLineInterface

	def run
		request = IssueRequest.new(url: prompt_url,
							title: prompt_title,
							body: prompt_body)
		credential = Credential.new(username: prompt_username,
							password: prompt_password,
							request: request)
		user = credential.credential_type
		if user
			user.create_issue
		else
			puts "This remote repository is not supported or the URL format was invalid."
		end
	end
end