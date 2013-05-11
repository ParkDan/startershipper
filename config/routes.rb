Startershipper::Application.routes.draw do
  # Routes for the Profile resource:
  # CREATE
  get '/profiles/new', controller: 'profiles', action: 'new', as: 'new_profile'
  post '/profiles', controller: 'profiles', action: 'create'

  # READ
  get '/profiles', controller: 'profiles', action: 'index', as: 'profiles'
  get '/profiles/:id', controller: 'profiles', action: 'show', as: 'profile'

  # UPDATE
  get '/profiles/:id/edit', controller: 'profiles', action: 'edit', as: 'edit_profile'
  put '/profiles/:id', controller: 'profiles', action: 'update'

  # DELETE
  delete '/profiles/:id', controller: 'profiles', action: 'destroy'
  #------------------------------

  devise_for :users

  root to: 'networks#index'

  # Routes for the Network resource:
  # CREATE
  get '/networks/new', controller: 'networks', action: 'new', as: 'new_network'
  post '/networks', controller: 'networks', action: 'create'
  post '/networks/:id' => 'networks#verify', as: 'feed_redirect'

  # READ
  get '/networks', controller: 'networks', action: 'index', as: 'home'
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

  get '/groups/:id/membership' , controller: 'groups' , action: 'membership' , :as => 'membership'

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
end
