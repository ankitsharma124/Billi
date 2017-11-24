Rails.application.routes.draw do
  
  #post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #namespace :api, :defaults => {:format => :json} do    
  #    post   "/sign-in"       => "sessions#create"
  #    delete "/sign-out"      => "sessions#destroy"
  #  end  
 # get '/employees/hello' to 'employees#hello'
  #resources :employees
  
  #get 'hello' , to: 'hello#helloworld'
  #resources :hellos

  #post 'employees' , to: 'employees#create'
  #Rails.application.routes.draw do
  # ...
 # mount GraphiQL::Rails::Engine, at: "/gi", graphql_path: "/graphql"
  # ...
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount GraphiQL::Rails::Engine, at: 'gi', graphql_path: '/graphql'
#end
  
end
