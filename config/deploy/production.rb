set :port, 1025
set :user, 'deployer'
set :deploy_via, :remote_cache
set :use_sudo, false

server '159.203.88.249',
  roles: [:web, :app, :db],
  port: fetch(:port),
  user: fetch(:user),
  primary: true

set :deploy_to, "/home/#{fetch(:user)}/#{fetch(:application)}"

set :ssh_options, {
  forward_agent: true,
  auth_methods: %w(publickey),
  user: 'deployer',
}

set :rails_env, :production
set :conditionally_migrate, true 