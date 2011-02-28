SkypeBirthdays::Application.routes.draw do
  match '/login'                  => 'omnisocial/auth#new',      :as => :login
  match '/auth/:service/callback' => 'omnisocial/auth#callback'
  match '/auth/failure'           => 'omnisocial/auth#failure'
  match '/logout'                 => 'omnisocial/auth#destroy',  :as => :logout

  root :to => "home#index"
end
