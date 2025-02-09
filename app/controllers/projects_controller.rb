class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token, :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @posts = @project.posts
  end

  def new
    @project = Project.new
  end

  def create
    # render plain: params[:project].inspect
    @project = Project.new(project_params)

    if @project.save
      redirect_to "/pages/manage"
    else
      render 'new'
    end
  end

  private
    def project_params
      params.require(:project).permit(:name, :logo)
    end
end
