Rails.application.routes.draw do
  get 'timetable/tt'

  get 'board/index'
  get 'board/create'

  root 'home#login' #첫페이지(로그인)
  
  get 'home/main1' #연습페이지
  post 'home/main2' #실전페이지
  get 'home/main2'
  post 'home/index'
  get 'home/findTkcrs'
  post 'home/sucess'
  get 'home/result'
  
  get 'timetable/tt'

  get 'home/done'
  get 'home/my_page/:user_id' => 'home#my_page'
  get 'home/my_result/:user_id/:chasi' => 'home#my_result'
  devise_for :users, controllers: { sessions: 'users/sessions'}
  
  
  get 'home/loading'
  # namespace :admin do 
  #   devise_for :users, only: :new do 
  #     post :generate_new_password_email 
  #   end
  # end
  
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
