class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(comments_params)
    redirect_to blog_path(@blog)
  end

  def edit
  end

  def update
  end

  private
  def comments_params
    params.require(:comment).permit(:commenter, :comment_text)
  end
end
