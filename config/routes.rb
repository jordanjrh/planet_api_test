Rails.application.routes.draw do

%w(planets).each do |model_name|
    namespace :api do
      namespace :v1 do
        resources model_name, only: [:index, :create, :destroy, :update]
      end
    end
  end

end
