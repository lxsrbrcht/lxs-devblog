class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @posts = Post.all
  end

  def me
  end

  def manage
    @projects = Project.all
    @posts = Post.all
  end
end
