Rails.application.routes.draw do
  resources :authors
  resources :books

  resources :publishing_houses, :path => '/publishing-houses'
end
