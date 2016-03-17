class Credential
	attr_reader :username, :password, :request
	
	def initialize(args = {})
		@username = args[:username]
		@password = args[:password]
		@request = args[:request]
	end

	def credential_type
		if request.host == "github.com"
			GitHubUser.new(username: username, 
							password: password,
							request: request)
		elsif request.host == "bitbucket.org"
			BitBucketUser.new(username: username,
							password: password, 
							request: request)
		else
			nil
		end
	end
end

class GitHubUser < Credential
	def create_issue
		login.create_issue(request.path, request.title, request.body)
		puts "\nSuccessfully created issue '#{request.title}' on Github repository '#{request.path}'"
	end

	private

	def login
		client = Octokit::Client.new(login: username,
									password: password)
		client.login
		client
	end
end

class BitBucketUser < Credential
	def create_issue
		login.issues.create(request.path.split('/')[0],
							request.path.split('/')[1], 
								{"title" => request.title, 
								"content" => request.body})
		puts "\nSuccessfully created issue '#{request.title}' on BitBucket repository '#{request.path}'"
	end
	
	private

	def login
		client = BitBucket.new(login: username, 
							password: password)
	end
end