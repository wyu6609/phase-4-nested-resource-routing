Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    # get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
    # get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review'
    resources :reviews, only: %i[index show]
  end
  resources :reviews, only: %i[show index create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
