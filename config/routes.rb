Rails.application.routes.draw do
  resources :stores
  devise_for :users
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get 'avatars/new' => 'avatars#new', :as => :new_avatars
end
