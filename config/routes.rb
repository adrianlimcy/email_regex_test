Rails.application.routes.draw do
  get 'mail/index'

  root 'home#index', as: 'home_index', via: :all
  get 'authorize' => 'auth#gettoken'
end
