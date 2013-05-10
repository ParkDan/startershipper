Startershipper::Application.routes.draw do
  devise_for :users

  root to: 'Pages#index'

  get 'home' => 'Pages#index', as: 'home'
  get 'users/:id/profile' => 'Users#profile', as: 'profile'


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
  #-------------------------------

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
