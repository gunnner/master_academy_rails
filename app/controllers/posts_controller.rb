class PostsController < ApplicationController
  before_action :find_post, only: %i[show]
  def index
    @posts = Post.all
  end

  def show; end

  private

  def find_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.permit(:user_id, :title, :body, :published_at)
  end
end
