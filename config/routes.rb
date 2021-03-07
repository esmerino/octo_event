Rails.application.routes.draw do
  get 'issues/:id/events', to: 'issues#events'

  resources :events, only: [:create]
end
