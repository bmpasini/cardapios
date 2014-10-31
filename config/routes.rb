Rails.application.routes.draw do
  resources :menus
  resources :users
  resources :restaurants do
    resources :menus
    resources :menu_items, only: [:new, :create, :edit, :update, :destroy]
    member do
      post :edit_specialties
    end
  end

  root 'restaurants#index'

  get 'imports' => 'imports#index', as: :imports
  post 'imports/restaurants' => 'imports#restaurants', as: :import_restaurants
  post 'imports/menu' => 'imports#menu', as: :import_menu

  # post 'restaurants/:restaurant_id/specialties' => 'restaurants#edit_specialties' as: :edit_specialties

  # get 'restaurants/menu_items/:id/edit' => 'menu_items#edit', as: :edit_menu_items
  # patch 'restaurants/menu_items/:id' => 'menu_items#update'
  # delete 'restaurants/menu_items/:id' => 'menu_items#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
