WomenSupport::Application.routes.draw do
  get "profile/pushpa"

  get "profile/anadashobha"

  get "profile/menkumari"

  get "profile/satyamalla"

  get "profile/prami"

  get "profile/jaleswori"

  get "profile/nilima"

  get "news_activities/news_detail"

  get "news_activities/activities_detail"

  get "banners/new"

  get "banners/create"

  get "banners/destroy"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  get "pages/home"

  get "pages/about_us"

  get "pages/services"

  get "pages/activities"

  get "pages/achievements"

  get "pages/Our_organization"

  get "pages/jobs"
  get "pages/chair_person"


  get "pages/branch"

  get "pages/news_event"
  get "pages/contact_us"



  resources :main do
    collection do
      get 'news_paginator'
      get 'activities_paginator'
    end
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'main#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
