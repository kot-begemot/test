class ApiController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    
  end

  def lookup
    email = params[:email]
    if email == 'new'
      render json:{}, status: :not_found
    elsif email == 'found'
      render json:{}
    else
      render json:{}, status: :internal_server_error
    end
  end
end
