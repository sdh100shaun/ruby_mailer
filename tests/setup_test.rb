ENV['RACK_ENV'] = 'test'

$:<<::File.dirname(__FILE__)

require 'rubygems'
require 'test/unit'
require 'rack/test'
require 'yaml'
require 'sinatra'
require 'sinatra/base'
require_relative '../ruby_mailer'

class SetupTests < Test::Unit::TestCase
include Rack::Test::Methods

  def app
    RubyMailer.new
  end 
  
  def test_responds
    get '/'
    assert last_response.ok?, "not running"
    assert last_response.body =~ /rumbling/, last_response.body
  end
end