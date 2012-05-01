class ApplicationController < ActionController::Base
  protect_from_forgery

  def check_admin
    unless current_user.admin?
      flash[:notice] = "Sorry! You don't have access."
      redirect_to(root_path)
    end
  end

end
