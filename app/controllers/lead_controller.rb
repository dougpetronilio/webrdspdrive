class LeadController < ApplicationController
  
  before_filter :authenticated?
  
  def list
    @integrator = session[:integrator]
  end

  def create
  end

  def save
    email = params["email"]
    name = params["name"]
    last_name = params["last_name"]
    company = params["company"]
    phone = params["phone"]
    @lead = RdsPdrive::Lead.new(name, last_name, email, company, phone) 
    session[:integrator].add_lead(@lead)
    redirect_to :action => "list"
  end
  
end
