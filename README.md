1. add gems
    gem 'dotenv-rails', require: 'dotenv/rails-now'
    gem "slim"
    gem "slim-rails", :require => false
    gem 'rspec-rails'
2. rails generate rspec:install
3. rails db:migrate
4. gitignore
    .env
5. create .env file
6. rails secret
7. rails g mailer feedback received issued assigned
8. rails g controller home index
9. root 'home#index', as: 'home_index', via: :all
