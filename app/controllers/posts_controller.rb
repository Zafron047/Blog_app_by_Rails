class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
    @recent_comments = @post.five_most_recent_comments
  end
end