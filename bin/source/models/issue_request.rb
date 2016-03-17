class IssueRequest
	attr_reader :url, :title, :body
	
	def initialize(args = {})
		@url = args[:url]
		@title = args[:title]
		@body = args[:body]
	end

	def host
		if url =~ /\A#{URI::regexp}\z/
			URI.parse(url).host
		else
			"invalid"
		end
	end

	def path
		URI.parse(url).path[1..-1]
	end
end