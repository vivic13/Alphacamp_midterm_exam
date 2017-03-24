Rails.application.routes.draw do

	resources :infos do
		resources :comments, :controller => 'comments'
	end


	root "infos#index"

end
