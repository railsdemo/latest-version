LatestVersion::Application.routes.draw do
  
  root to: "pages#home"

  
  resources :blogs
  get '/blog' => 'blogs#current', as: 'current_blog'

  shallow do
    resources :documents do
      resources :versions
    end
  end

  
end
