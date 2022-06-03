Rails.application.routes.draw do
  devise_for :users,
    only: [:sessions],
    controller: {sessions: 'users/sessions'}

end
