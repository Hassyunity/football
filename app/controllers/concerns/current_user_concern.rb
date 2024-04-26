module CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    helper_method :current_user
  end

  private

  def current_user
    # Implémentez votre logique pour récupérer l'utilisateur connecté ici
    # Par exemple, si vous utilisez Devise :
    @current_user ||= Users.find_by(id: session[:user_id]) if session[:user_id]
  end
end
