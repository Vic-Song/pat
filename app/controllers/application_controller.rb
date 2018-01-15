class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #for authenticating user or admin
 def is_admin?
   redirect_to home_index_path, alert: '请以管理员身份登陆后进行操作！' unless user_signed_in?&&current_user.admin?
 end
 def is_user?
    redirect_to home_index_path, alert: '请登录后进行操作！'  unless user_signed_in?
 end



  
end
