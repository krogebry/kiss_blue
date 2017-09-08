#!/usr/bin/env ruby
require 'json'
require 'sinatra'

#get '/' do
  #"Hello World #{params[:name]}".strip
#end

set :bind, '0.0.0.0'
set :port, ENV['PORT']
enable :sessions
enable :logging

#get "/healthz" do
  #{ :success => true }.to_json
#end

get "/" do
  if request.env.has_key?( 'HTTP_ACCEPT' ) && request.env['HTTP_ACCEPT'] == 'application/json'
	  {'message': 'Good morning'}.to_json
  else
    '<p>Hello, World</p>'
  end
end

