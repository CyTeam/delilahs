set :rails_env, 'production'
set :branch, 'master'

set :deploy_to, '/srv/cyt.ch/delilahs'
role :web, "delilahs"                          # Your HTTP server, Apache/etc
role :app, "delilahs"                          # This may be the same as your `Web` server
role :db,  "delilahs", :primary => true        # This is where Rails migrations will run

