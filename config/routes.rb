Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :planets, only: [:index, :create, :destroy, :update]
    end
  end

end
