Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new, :create, :edit, :index]
  end

  resources :songs, only: [:show, :update]

  resources :playlists
end
