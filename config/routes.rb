Rails.application.routes.draw do
  apipie
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #authenticate :user, -> (user) { user.is_admin? } do
  authenticate :user do
    mount Blazer::Engine, at: "blazer"
  end
end
