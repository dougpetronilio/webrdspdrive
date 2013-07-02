class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authenticated?
    unless session[:integrator]
      redirect_to :controller => "welcome", :action => "index"
      return false
    else
      return true
    end
  end
end
