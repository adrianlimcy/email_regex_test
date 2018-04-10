Rails.application.routes.draw do
  get 'contacts/index'

  get 'calendar/index'

  get 'mail/index'

  root 'home#index', as: 'home_index', via: :all
  get 'authorize' => 'auth#gettoken'
end
