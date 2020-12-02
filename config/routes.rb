Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/bikes" => "bikes#index"
    get "/bikes/:id" => "bikes#show"
    post "/bikes" => "bikes#create"
    patch "/bikes/:id" => "bikes#update"
    delete "/bikes/:id" => "bikes#destroy"

    
  end
end
