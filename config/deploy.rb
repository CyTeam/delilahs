#Application
set :application, "delilahs"
set :repository,  "git@github.com:CyTeam/delilahs.git"

# Staging
set :stages, %w(production)
set :default_stage, "production"
require 'capistrano/ext/multistage'

# Deployment
set :server, :passenger
set :user, "deployer"                               # The server's user for deploys

# Configuration
set :scm, :git
ssh_options[:forward_agent] = true
set :use_sudo, false
set :deploy_via, :remote_cache
set :git_enable_submodules, 1
set :copy_exclude, [".git", "spec"]


# Passenger
require 'cap_recipes/tasks/passenger'

# Bundle install
require "bundler/capistrano"
after "bundle:install", "deploy:migrate"

# Clean up the releases after deploy.
after "deploy", "deploy:cleanup"
