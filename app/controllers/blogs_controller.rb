class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @user = current_user
    @blog = @user.blogs.new(blog_params)
      if @blog.save
        redirect_to blogs_path(@blog)
      else
        render :new
      end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :date, :distance, :time, :mapimage)
  end
end
