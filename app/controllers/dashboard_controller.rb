class DashboardController < ApplicationController
  def index
    @user = Users.all # Remplacez User.all par votre logique pour obtenir les utilisateurs
  end
end
