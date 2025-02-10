class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @new_post = Post.new
  end

  def create
    @new_post = Post.new(post_params)
    if @new_post.save
      redirect
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, photos: [])
  end
end
