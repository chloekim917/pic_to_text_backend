Rails.application.routes.draw do
  #rails as api setup
  namespace :api do
    namespace :v1 do
      resources :notes
      resources :notebooks
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
