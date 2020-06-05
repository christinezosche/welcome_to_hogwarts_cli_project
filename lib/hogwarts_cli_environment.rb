require 'bundler/setup'
Bundler.require(:default)

require 'open-uri'
require 'net/http'
require 'dotenv/load'

require_relative './hogwarts_cli/cli.rb'
require_relative './hogwarts_cli/api.rb'
require_relative './hogwarts_cli/hogwarts_houses.rb'

