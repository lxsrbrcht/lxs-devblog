class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_projects


  def set_projects
    @projects = Project.all
  end
end
