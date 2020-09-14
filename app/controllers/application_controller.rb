class ApplicationController < ActionController::Base

   # ログイン済ユーザーのみにアクセスを許可する
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
   # deviseコントローラーにストロングパラメータを追加する
  
   def home; end
   
   protected
  
   def configure_permitted_parameters
     # サインアップ時にnameのストロングパラメータを追加
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
     # アカウント編集の時にnameとprofileのストロングパラメータを追加
     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
   end
 end
