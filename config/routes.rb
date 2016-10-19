Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new, :create, :edit]
  end

  resources :songs, only: [:show, :update]

  resources :playlists
end
