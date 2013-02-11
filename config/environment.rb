# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Claropj2::Application.initialize!

if $0 == 'irb'
    require 'hirb'
    Hirb.enable
end
