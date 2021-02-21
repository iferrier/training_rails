Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :surfboards
  resources :clients do
    resources :boardbookings, only:[:new, :create]
  end

end
