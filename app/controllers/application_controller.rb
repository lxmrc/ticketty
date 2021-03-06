class ApplicationController < ActionController::Base
  private

  def authorize_admin!
    authetincate_user!

    unless current_user.admin?
      redirect_to root_path, alert: "You must be an admin to do that."
    end
  end
end
