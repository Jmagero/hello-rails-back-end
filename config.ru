# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server
# config.ru
# Allow font files to be loaded from anywhere (for loading webfonts in Firefox)
require 'rack/cors'
use Rack::Cors do
  allow do
    origins '*'
    resource '/fonts/*', :headers => :any, :methods => :get
  end
end