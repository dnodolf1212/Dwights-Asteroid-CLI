require 'bundler/setup'
Bundler.require(:default, :developement)
require 'dotenv/load'

require_relative '../lib/cli.rb'
require_relative '../lib/asteroid.rb'
require_relative '../lib/api.rb'


