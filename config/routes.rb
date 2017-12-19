Rails.application.routes.draw do
  resources :projects do
    resources :progresses
  end

  root 'projects#index'
end
