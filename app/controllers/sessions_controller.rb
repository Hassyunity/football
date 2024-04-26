# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    user = Users.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      if user.email == 'admin@titan.ai' && params[:password] == 'admin'
        redirect_to admin_users_path
      else
        session[:user_id] = user.id
        redirect_to dashboard_path 
      end
    else
      flash[:alert] = 'Adresse email ou mot de passe invalide'
      redirect_to login_path
    end
  end

  # Déconnexion
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Vous êtes déconnecté."
  end
end
