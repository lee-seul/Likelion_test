class HomeController < ApplicationController
  def index
    @posts = Post.all.order("id desc") 
  end

  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to :back
  end

  def update_view
    @post = Post.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save

    redirect_to "/"
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.destroy

    redirect_to "/"
  end

  def comment_write
    comment = Comment.new
    comment.content = params[:content]
    comment.post_id = params[:id_of_post]
    comment.save

    redirect_to :back
  end
end
