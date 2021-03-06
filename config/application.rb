require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Spotandidentify
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:put, :get, :post, :delete, :options]
      end
    end
  end
end


# module Spotandidentify
#   class Application < Rails::Application
#     # Settings in config/environments/* take precedence over those specified here.
#     # Application configuration should go into files in config/initializers
#     # -- all .rb files in that directory are automatically loaded.
#
#     config.middleware.insert_before 0, Rack::Cors do
#       allow do
#         origins 'localhost:3000', 'spotter-client.herokuapp.com'
#         resource '*', :headers => :any, :methods => [:put, :get, :post, :delete, :options]
#       end
#     end
#
#
#   end
# end
