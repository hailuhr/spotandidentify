Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#home'

  get '/people', to: 'people#index'

  post '/people', to: 'people#create'

  # ***practice_for_client
  get '/people/new', to: 'people#new', as: :new_person

  # ***practice_for_client
  get '/people/:id/edit', to: 'people#edit', as: :edit_person

  get '/people/:id', to: 'people#show', as: :person

  put '/people/:id', to: 'people#update'

  delete '/people/:id', to: 'people#destroy'

  get '/people/:id/delete_form', to: 'people#delete_form'
  # resources :people

end
