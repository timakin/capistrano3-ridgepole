# Capistrano3 Ridgepole

Capistrano3 plugin for db schema management with [ridgepole](https://github.com/winebarrel/ridgepole)

[![Gem Version](https://badge.fury.io/rb/capistrano3-ridgepole.svg)](https://badge.fury.io/rb/capistrano3-ridgepole)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano3-ridgepole'
```

## Loading

In your configuration file ( `deploy.rb` ) , load this capistrano3-ridgepole module.

```ruby
require 'capistrano3/ridgepole'
```

## Supported tasks' usage

```
cap ridgepole:apply   # Apply Schemafile with ridgepole
cap ridgepole:diff    # Show difference that will be created by schema application
cap ridgepole:dry_run # Test Schemafile application with ridgepole dry-run
```

## Options

```ruby
# Target server(role) where you'll apply the database schema settings.
set :ridgepole_roles, :db

# Path of Schemafile  (default path is root of your app directory) 
set :ridgepole_schema_file, File.join((fetch(:current_path)), "Schemafile") 

# Path of database.yml (default path is config/database.yml)
set :ridgepole_config_file, File.join(fetch(:current_path), "config", "database.yml")

# Environment of rails application that you'd apply schema. (default env is "development")
set :ridgepole_env, fetch(:rails_env)

# Additional ridgepole options (default is empty)
set :ridgepole_options, "--alter-extra='LOCK=NONE' --debug"
```


## Contributing

1. Fork it ( https://github.com/timakin/capistrano3-ridgepole/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
