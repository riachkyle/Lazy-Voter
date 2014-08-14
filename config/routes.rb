Lazyvoter::Application.routes.draw do
resources :ballots do
    resources :propositions
  end

resources :ballots do
    resources :comments
  end

  resources :propositions do 
    resources :comments
  end

  



 get 'ballots/:id/saved' => 'ballots#saved', as: :saved

  resource :session, only: [:new, :create, :destroy]

  get 'users' => 'users#index', as: :users
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show', as: :user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  put 'users/:id' => 'users#update'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  # get 'users/' => 'users#index'

  # get 'users/' => 'user#show'

  # get 'users/new' => 'users#new', as: :user_new

  # get 'users/:id' => 'users#show', as: :user

  # post 'users/' => 'users#create'

  # get "users/:id/edit" => "users#edit", as: :user_edit

  # patch 'users/:id' => 'users#update'

  # delete "users/:id" => "users#destroy"

  # get 'ballots/' => 'ballots#index'

  # get 'ballots/new' => 'ballots#new', as: :ballot_new

  # get 'ballots/:id' => 'ballots#show', as: :ballot

  # post 'ballots/' => 'ballots#create'

  # get "ballots/:id/edit" => "ballots#edit", as: :ballot_edit

  # patch 'ballots/:id' => 'ballots#update'

  # delete "ballots/:id" => "ballots#destroy"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
