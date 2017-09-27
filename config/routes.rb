Rails.application.routes.draw do
  resources :image_categories
  resources :music_categories
  resources :video_categories
  resources :philosophers
  resources :lectures
  resources :videos
  resources :images
  devise_for :users
root 'static_pages#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/images', to: 'images#index'
  get '/videos', to: 'videos#index'
  get '/music_videos', to: 'videos#music_videos'
  get '/funny_shit', to: 'videos#funny'
  get '/nature', to: 'videos#nature'
  get '/eye_candy', to: 'videos#eye_candy'
end
