Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, :defaults => {:format => :json} do    
      post   "/sign-in"       => "sessions#create"
      delete "/sign-out"      => "sessions#destroy"
    end  
end
