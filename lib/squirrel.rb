require "httparty"
require "squirrel/ship"

module Squirrel
  include ActiveSupport::Configurable

  config_accessor :api_key, :api_endpoint, :api_version

  configure do |config|
    config.api_endpoint = "https://squirreldeploy.herokuapp.com"
    config.api_version = "v1"
  end

end