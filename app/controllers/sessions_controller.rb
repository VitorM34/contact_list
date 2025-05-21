class SessionsController < ApplicationController
  def new
redirect_to user_path(current_user) if user_signed_in?
  end

  def create 
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sing_in(user)
      redirect_to contacts_path
    else
      flash.now[:danger] = 'Email ou senha inválidos'
      render 'new'
    end
  end

  def destroy
    sing_out
    flash[:sucess] = 'Logout com sucesso'
    redirect_to entrar_path
  end
end
