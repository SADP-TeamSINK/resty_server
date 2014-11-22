# This file is used by Rack-based servers to start the application.
require 'grape/rabl'

use Rack::Config do |env|
    env['api.tilt.root'] = Dir[Rails.root.join('app', 'views')]
end
require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
