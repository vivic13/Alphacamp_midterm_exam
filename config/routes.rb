Rails.application.routes.draw do

	resources :infos

	root "infos#index"

end
