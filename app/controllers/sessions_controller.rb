class SessionsController < ApplicationController

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:current_user_id] = user.id
      redirect_to root_path
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to root_path, notice: "You have successfully logged out."
  end


end
