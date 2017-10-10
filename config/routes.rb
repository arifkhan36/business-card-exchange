Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'businesscards#index'
# get '/welcome', to : 'welcome#index'
resources :users
resources :businesscards, only: [:index, :new, :create]
end

