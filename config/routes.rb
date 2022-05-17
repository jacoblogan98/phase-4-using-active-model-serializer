Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  
  get '/movie_summaries', to: 'movies#summaries'
  get '/movies/:id/summary', to: 'movies#summary'
end
