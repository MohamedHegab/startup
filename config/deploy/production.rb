set :port, 1025
set :user, 'deployer' # e.g. 'deploy'
set :deploy_via, :remote_cache
set :use_sudo, false
set :branch, 'master' # e.g. 'master'

server '159.203.88.249', # e.g. 192.xxx.xxx.xxx
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: fetch(:user),
  primary: true

set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}" # e.g. "/var/apps/rails_blog"

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: 'deployer',
}

set :rails_env, :production
set :conditionally_migrate, true