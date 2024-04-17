Rails.application.routes.draw do
  resources :schemes do
    get :top, on: :collection
  end

   root "schemes#index"
end
