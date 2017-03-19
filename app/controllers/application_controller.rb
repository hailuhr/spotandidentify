class ApplicationController < ActionController::Base


  def home
  end


  protected

  def json_request?
    request.format.json?
  end

end
