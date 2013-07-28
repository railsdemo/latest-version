LatestVersion::Application.routes.draw do
  
  resources :documents do
    resources :versions
  end

  root to: "pages#home"
  
end
