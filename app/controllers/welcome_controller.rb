class WelcomeController < ApplicationController
  
  def index
    @title = "Informe sua senha e password do pipedrive"
  end
  def login
    email = params["email"]
    password = params["password"]
    session[:integrator] = RdsPdrive::Integrator.new(email, password)
    redirect_to :controller => "lead", :action => "list"
  end
  
  def logoff
    session[:integrator] = nil
    redirect_to :action => "index"
  end
end
