class Admin::ApplicationController < ApplicationController
  before_action :authorize_admin!

  def index
    @user = current_user
  end

  protected

  def authorize_admin!
    authenticate_user!
    unless current_user.admin?
      redirect_to root_path, alert: "Vous devez être administrateur pour avoir accés !"
    end
  end

end
