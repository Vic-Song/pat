Rails.application.routes.draw do
  resources :results
  resources :papers
  resources :sub_options
  resources :obj_options
  resources :questions
  resources :surveys
  devise_for :users
  get 'home/index' => 'home#index'

  get 'home/admin'

  get 'home/userpanel'

  root 'home#index'

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources  :results,:users
      get 'records/show'
      get 'records/index'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
