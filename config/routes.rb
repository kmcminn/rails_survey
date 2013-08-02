RailsSurvey::Application.routes.draw do

  resources :surveys


  resources :surveys
  resources :questions
  resources :survey_results
  #match 'surveys/:id' => 'survey#show'

  #get '/survey', to: 'surveys#show_current'

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

  # match ':controller(/:action(/:id))(.:format)'
end
