Atlas::Application.routes.draw do

	get "users/new"

	resources :receipts
	root :to => "authentication#sign_in"

	get "receipts_index" => "receipts#index"

	get "signed_out" => "authentication#signed_out"

	get "sign_in" => "authentication#sign_in"
	post "sign_in" => "authentication#login"

	get "new_user" => "authentication#new_user"
	put "new_user" => "authentication#register"

	get "account_settings" => "authentication#account_settings"
	put "account_settings" => "authentication#set_account_info"

	get "forgot_password" => "authentication#forgot_password"
	put "forgot_password" => "authentication#send_password_reset_instructions"

	get "password_reset" => "authentication#password_reset"
	put "password_reset" => "authentication#new_password"

end
