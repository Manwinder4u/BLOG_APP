class CommentsController < ApplicationController
  before_action :find_or_int_instances, except:[:index, :new]
  
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    @comment = @blog.comments.create(comments_params)
    redirect_to blog_path(@blog)
  end

  def edit
  end

  def update
    if @comment.update_attributes(comments_params)
      redirect_to blog_path(@blog)
    else
      render 'edit'
    end
  end

  def destroy
    if @comment.destroy
      redirect_to blog_path(@blog)
    else
      render 'edit'
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:commenter, :comment_text)
  end

  def find_or_int_instances
    @blog = Blog.find(params[:blog_id])
    if params[:id].present?
      @comment = Comment.find(params[:id])
    end
  end
end
