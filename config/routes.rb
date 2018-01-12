Rails.application.routes.draw do
  devise_for :users
  post 'home/index'
  root 'home#main'
  get 'home/findTkcrs'
  get 'home/login'
  post 'home/sucess'
  
  # <tr>
  #                 <td rowspan="2">
  #                   <a href="javascript:void(0);" class="btn btn_inner">
  #                     <span class="btn_txt">삭제</span><!-- 삭제 -->
  #                   </a>
  #                 </td>
  #                 <td id="1campus"><%#= s.campus %></td>
  #                 <td id="1subjid"><%#= s.subjid %></td>
  #                 <td></td>
  #                 <td id="1subtitle">SPSS입문</td>
  #                 <td id="1subjpoint"><%#= s.subjpoint %></td>
  #                 <td id="1teacher"><%#= s.teacher %></td>
  #                 <td></td>
  #               </tr>
  #               <tr>
  #                 <td colspan="7" class="ta_l"><%#= s.tabletime %></td>
  #               </tr>
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
