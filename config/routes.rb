Rails.application.routes.draw do
  root to: 'informations#index'
  devise_for :users,
    only: [:sessions],
    controller: {sessions: 'users/sessions'}
  # resources :informations, only: [:index]
  resources :contacts, only: [:index, :new, :create]

  namespace 'api' do
    namespace 'v1' do
      resources :contacts, only: [:index]
    end
  end
end
