Rails.application.routes.draw do
  namespace :product_service do
    resources :products
  end
  namespace :member_service do
    resources :members
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
