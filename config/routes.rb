Rails.application.routes.draw do
  root to: 'animes#index'
  resources :animes, :episodes
end
