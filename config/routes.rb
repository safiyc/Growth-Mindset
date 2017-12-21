Rails.application.routes.draw do
  devise_for :users
  resources :projects do
    resources :progresses
  end

  root 'projects#index'
end
