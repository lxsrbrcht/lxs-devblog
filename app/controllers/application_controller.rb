class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_projects


  def set_projects
    @projects = Project.all
  end

  protected

  def after_sign_in_path_for(resource)
    pages_manage_path # Replace with the path you want to redirect to
  end
end
