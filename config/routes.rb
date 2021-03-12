Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 { format: :json } do
    resources :pets, only: [ :index ]
  end
end