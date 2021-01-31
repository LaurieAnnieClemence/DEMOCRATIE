lock "~> 3.15.0"

set :application, "democracie"
set :repo_url, "https://github.com/dorianmariefr/DEMOCRATIE.git"
set :deploy_to,
      -> { "/home/#{fetch(:user)}/applications/#{fetch(:application)}" }

append :linked_files, ".env", "config/master.key"
append :linked_dirs, "tmp/pids", "tmp/sockets", "log", "node_modules", "storage"

set :format_options, truncate: false
