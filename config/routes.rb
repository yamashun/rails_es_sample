Rails.application.routes.draw do
  resources :mangas, only: %i(index)
end
