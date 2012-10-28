# Squirrel

Track your deployment the easy way.

Head over to [Squirrel](https://squirreldeploy.herokuapp.com) and
create your account.

## Capistrano

Setup Rake and Config files

    $ rails generate squirrel:install --api-key=FOOBAR

And add the following line to your `deploy.rb`

    require 'squirrel/capistrano'

Now your ready to go. Happy deploy!

## Heroku

Add the Squirrel addon to your app

    $ heroko addons:add squirrel

Setup the hook

    $ rake squirrel:heroku:add_notification

Deploy your app. You can access the dashboard from within your
Heroku account.

## Anything else

Using a different deployment solution? Just call Squirrel from
where ever you like

    Squirrel.ship(head_long: "FOO", user: "deploy", branch: "master")

