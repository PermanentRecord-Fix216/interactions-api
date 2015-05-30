class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :null_session
  
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    render json: JSONApi::Errors.new('not_found'), status: 404
  end
end
