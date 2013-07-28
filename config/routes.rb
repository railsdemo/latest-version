LatestVersion::Application.routes.draw do
  
  resources :blogs

  shallow do
    resources :documents do
      resources :versions
    end
  end

  root to: "pages#home"
  
end
