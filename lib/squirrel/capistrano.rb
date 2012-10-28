# Defines deploy:squirrel_ship which will send information about the deploy to Squirrel.

Capistrano::Configuration.instance(:must_exist).load do
  after "deploy",            "deploy:squirrel_ship"
  after "deploy:migrations", "deploy:squirrel_ship"

  namespace :deploy do
    desc "Notify Squirrel of the release"
    task :squirrel_ship, :except => { :no_release => true } do
      rails_env = fetch(:squirrel_env, fetch(:rails_env, "production"))
      branch = fetch(:branch, "master")
      local_user = ENV['USER'] || ENV['USERNAME']
      executable = RUBY_PLATFORM.downcase.include?('mswin') ? 'rake.bat' : 'rake'
      notify_command = "#{executable} squirrel:ship ENVIRONMENT=#{rails_env} HEAD_LONG=#{current_revision} BRANCH=#{branch} USER=#{local_user}"
      puts "Notifying Squirrel of Release (#{notify_command})"
      `#{notify_command}`
      puts "Shipping Complete."
    end
  end
end