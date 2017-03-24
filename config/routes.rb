Rails.application.routes.draw do

  devise_for :users
	resources :infos do
		resources :comments, :controller => 'comments'
	end


	root "infos#index"

end
