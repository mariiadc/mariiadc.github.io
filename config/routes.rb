Rails.application.routes.draw do
  resources :projects
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    get "about", to: "pages#about",  as: :about
    get "contact", to: "pages#contact" ,  as: :contact

    resources :bookings, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
end
