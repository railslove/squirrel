module Squirrel
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    class_option :api_key, :type => :string, :desc => "The API key obained from squirrel."

    def create_ship
      template "squirrel.rake.erb", File.join(Rails.root, "lib", "tasks", "squirrel.rake")
      template "squirrel.rb.erb", File.join(Rails.root, "config", "initializers", "squirrel.rb")
    end
  end
end
