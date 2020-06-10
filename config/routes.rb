Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :show, :edit, :destroy]
  patch '/songs/:id/edit', to: 'songs#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
