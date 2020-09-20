class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
      flash[:notice] = "Blog Successfully created"
    else
      flash[:notice] = "Something wrong happened"
    end
  end

  private 

  def blog_params
    params.require(:blog).permit(:title, :content, :publisher)
  end
end
