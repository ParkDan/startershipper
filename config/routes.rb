Startershipper::Application.routes.draw do
  devise_for :users

  root to: 'Pages#index'

  get 'home' => 'Pages#index', as: 'home'

  # Routes for the Network resource:
  # CREATE
  get '/networks/new', controller: 'networks', action: 'new', as: 'new_network'
  post '/networks', controller: 'networks', action: 'create'

  # READ
  get '/networks', controller: 'networks', action: 'index', as: 'networks'
  get '/networks/:id', controller: 'networks', action: 'show', as: 'network'

  # UPDATE
  get '/networks/:id/edit', controller: 'networks', action: 'edit', as: 'edit_network'
  put '/networks/:id', controller: 'networks', action: 'update'

  # DELETE
  delete '/networks/:id', controller: 'networks', action: 'destroy'
  #------------------------------

  # Routes for the Group resource:
  # CREATE
  get '/groups/new', controller: 'groups', action: 'new', as: 'new_group'
  post '/groups', controller: 'groups', action: 'create'

  # READ
  get '/groups', controller: 'groups', action: 'index', as: 'groups'
  get '/groups/:id', controller: 'groups', action: 'show', as: 'group'

  # UPDATE
  get '/groups/:id/edit', controller: 'groups', action: 'edit', as: 'edit_group'
  put '/groups/:id', controller: 'groups', action: 'update'

  # DELETE
  delete '/groups/:id', controller: 'groups', action: 'destroy'
  #------------------------------

  # Routes for the Post resource:
  # CREATE
  get '/posts/new', controller: 'posts', action: 'new', as: 'new_post'
  post '/posts', controller: 'posts', action: 'create'

  # READ
  get '/posts', controller: 'posts', action: 'index', as: 'posts'
  get '/posts/:id', controller: 'posts', action: 'show', as: 'post'

  # UPDATE
  get '/posts/:id/edit', controller: 'posts', action: 'edit', as: 'edit_post'
  put '/posts/:id', controller: 'posts', action: 'update'

  # DELETE
  delete '/posts/:id', controller: 'posts', action: 'destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/events/new', controller: 'events', action: 'new', as: 'new_event'
  post '/events', controller: 'events', action: 'create'

  # READ
  get '/events', controller: 'events', action: 'index', as: 'events'
  get '/events/:id', controller: 'events', action: 'show', as: 'event'

  # UPDATE
  get '/events/:id/edit', controller: 'events', action: 'edit', as: 'edit_event'
  put '/events/:id', controller: 'events', action: 'update'

  # DELETE
  delete '/events/:id', controller: 'events', action: 'destroy'
  #------------------------------

  # Routes for the Idea resource:
  # CREATE
  get '/ideas/new', controller: 'ideas', action: 'new', as: 'new_idea'
  post '/ideas', controller: 'ideas', action: 'create'

  # READ
  get '/ideas', controller: 'ideas', action: 'index', as: 'ideas'
  get '/ideas/:id', controller: 'ideas', action: 'show', as: 'idea'

  # UPDATE
  get '/ideas/:id/edit', controller: 'ideas', action: 'edit', as: 'edit_idea'
  put '/ideas/:id', controller: 'ideas', action: 'update'

  # DELETE
  delete '/ideas/:id', controller: 'ideas', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
