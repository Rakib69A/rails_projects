Rails.application.routes.draw do
  resources :projects
  # Students routes with custom collection and member actions
  resources :students do
    collection do
      get :search
      post :import
    end

    member do
      get :profile
      patch :activate
    end
  end

  # Courses routes (standard RESTful routes)
  resources :courses

  # Root route (optional)
  root "students#index"
end
