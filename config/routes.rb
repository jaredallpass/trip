Rails.application.routes.draw do
  resources :word_pornstars
  resources :uploads
  resources :gifs
  resources :word_porns
  resources :music_sub_categories
  resources :music_categories
  resources :musics
  resources :image_sub_categories
  resources :image_categories
  resources :images
  resources :video_sub_categories
  resources :video_categories
  resources :videos
  devise_for :users
  resources :media_contents, only: [:create]

root 'static_pages#index'
  get  '/signup',  to: 'users#new'
  get  '/admin',  to: 'administrators#admin'
  post '/signup',  to: 'users#create'
  get '/images', to: 'images#index'
  get '/videos', to: 'videos#index'
  get '/music_videos', to: 'videos#music_videos'
  get '/funny_shit', to: 'videos#funny'
  get '/nature', to: 'videos#nature'
  get '/eye_candy', to: 'videos#eye_candy'
end
