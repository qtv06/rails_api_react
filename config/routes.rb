Rails.application.routes.draw do
  resources :items
  namespace :api do
    namespace :v1 do
      resources :lists
    end
  end
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
