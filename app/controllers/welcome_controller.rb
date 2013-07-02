class WelcomeController < ApplicationController
  
  def index
    @title = "Informe sua senha e password do pipedrive"
  end
  def login
    email = params["email"]
    password = params["password"]
    @integrator = RdsPdrive::Integrator.new(email, password)
  end
end
