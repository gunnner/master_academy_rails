class PostsController < ApplicationController
  before_action :find_post, only: %i[show]
  def index
    @posts = Post.all
  end

  def show; end

  private

  def find_post
    @post = Post.find_by(id: params[:id])
    if @post.nil?
      @posts = Post.all
      flash.now[:notice] = "Your post was not found. See a list of available posts:"
      render action: 'index'
    end
  end

  def post_params
    params.permit(:title, :body, :published_at)
  end
end
