Reference: https://docs.microsoft.com/en-us/outlook/rest/ruby-tutorial

1. add gems
    gem 'dotenv-rails', require: 'dotenv/rails-now'
    gem "slim"
    gem "slim-rails", :require => false
    gem 'rspec-rails'
    gem 'bootstrap', '~> 4.0.0'
    gem 'jquery-rails'
    gem 'oauth2'
    gem 'activerecord-session_store'
    gem 'microsoft_graph'
2. rails generate rspec:install
3. rails db:migrate
4. gitignore
    .env
5. create .env file
6. rails secret
7. rails g mailer feedback received issued assigned
8. rails g controller home index
9. root 'home#index', as: 'home_index', via: :all
10. create app in MS My Application
