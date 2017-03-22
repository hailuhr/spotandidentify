class ApplicationController < ActionController::Base
  include ErrorSerializer


  def home
  end



  def redirect
    flash[:error] = "There is no such person with that id"
    redirect_to root_url
  end


end
