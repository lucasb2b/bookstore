class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      reset_session
      session[:user_id] = user.id
      redirect_to root_path, notice: "olá " + user.email
    else
      redirect_to auth_login_path, alert: "Há algo de errado com suas credenciais, por favor verifique seus dados!"
    end
  end

  def destroy
  end
end
