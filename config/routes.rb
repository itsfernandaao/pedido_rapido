Rails.application.routes.draw do
  mount_devise_token_auth_for 'Employee', at: 'auth/v1/employee'

  namespace :admin do
    namespace :v1 do
      get 'dashboard' => 'dashboard#index'
    end
  end
end
