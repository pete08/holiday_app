Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/holidays" => "holidays#index"
    get "/holidays/:id" => "holidays#show"
    post "/holidays" => "holidays#create"
    patch "/holidays/:id" => "holidays#update"
    delete "/holidays/:id" => "holidays#destroy"
  end
end
