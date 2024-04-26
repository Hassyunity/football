class InscriptionController < ApplicationController
  def new
    @user = Users.new
  end

  def create
    @user = Users.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Inscription réussie !"
    else
      Rails.logger.error @user.errors.full_messages.join(", ")
      render :new
    end
  end

  private

  def user_params
    params.require(:users).permit(:firtname, :lastname, :username, :phone, :poste, :email, :password, :password_confirmation)
  end
end
