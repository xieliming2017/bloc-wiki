Rails.application.routes.draw do
    get 'welcome/index'

    get 'welcome/about'

    root 'welcome#index'

    devise_for :users

    get '/users/:id', :to => 'users#show', :as => :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
