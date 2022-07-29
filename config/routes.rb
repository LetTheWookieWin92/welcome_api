Rails.application.routes.draw do

    root to: 'events#index'
    get '/events', to: 'events#index'           # Reads all events
    post '/events', to: 'events#create'         # Creates events
    get '/events/:id', to: 'events#show'        # Read specific event with id
    put '/events/:id', to: 'events#update'      # Create or update an event with id
    delete '/events/:id', to: 'events#destroy'  # Destroy an event with id


end
