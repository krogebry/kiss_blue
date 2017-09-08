ENV['RACK_ENV'] = 'test'

require 'sinatra'
require './api'  
require 'test/unit'
require 'rack/test'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hello_world
    get "/"
    assert last_response.ok?
    assert_equal '<p>Hello, World</p>', last_response.body
  end

  def test_it_says_hello_using_json
    header 'Accept', 'application/json'
    get '/', :Accept => 'application/json'
    assert last_response.ok?
    assert last_response.body.include?('Good morning')
  end
end
