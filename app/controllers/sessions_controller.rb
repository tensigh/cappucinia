class SessionsController < ApplicationController
  def new
  end

  def create
    @current_user = User.find_by(email: params[:email].downcase)
    session[:id] = @current_user.id
    if @current_user && @current_user.authenticate(params[:password])
      session[:user_id] = @current_user.id
      flash[:info] = "logged in as #{@current_user.name}"
      redirect_to root_path
    else
      flash[:danger] = 'invalid email/password combination'
      render action: 'new'
    end
  end

  def destroy
    session[:user_id] = @current_user = nil
  end
end
