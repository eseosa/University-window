class ApplicationController < ActionController::Base
  #protect_from_forgery
  protected
  def login_required
    return true if User.find_by_id(session[:user_id])
    access_denied
    return false
  end
  def access_denied
    flash[:error] = 'Oops. You need to login before you can view that page.'
    redirect_to :log_in
  end
  
end
