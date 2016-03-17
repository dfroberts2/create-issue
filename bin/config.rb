#gem requires
require 'rubygems'
require 'bundler/setup'

# Add additional requires
require 'io/console'
require 'octokit'
require 'uri'
require 'bitbucket_rest_api'

#Loads source files in proper order
Dir["#{File.dirname(__FILE__)}/source/modules/*.rb"].each { |f| load(f) }
Dir["#{File.dirname(__FILE__)}/source/models/*.rb"].each { |f| load(f) }
Dir["#{File.dirname(__FILE__)}/source/*.rb"].each { |f| load(f) }
