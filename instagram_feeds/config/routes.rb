Rails.application.routes.draw do
  resources :instagram_feeds , only: :index
  get '/recet_media', to: 'instagram_feeds#recent_media'
  get '/oauth/connect', to: 'instagram_feeds#setup_connection'
  get '/oauth/callback', to: 'instagram_feeds#get_token'
  root to: "instagram_feeds#index"
end
