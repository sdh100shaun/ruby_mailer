$:<<::File.dirname(__FILE__)

# Gems
require "rubygems"
require "bundler/setup"
require "sinatra"
require "yaml"
require "ruby_mailer"


set :run, false
set :raise_errors, true
run RubyMailer.new
