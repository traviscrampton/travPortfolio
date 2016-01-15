class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
    allahdablogs = @blog.posts + @blog.pics
    @dinosaurs = allahdablogs.sort_by(&:created_at)
    render :show
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

  def edit
    @blog = Blog.find(params[:id])
    render :edit
  end

def update
  @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path
    else
     render :edit
    end
end

def destroy
  @blog = Blog.find(params[:id])
  @blog.destroy
  redirect_to blogs_path
end

  private
  def blog_params
    params.require(:blog).permit(:title, :date, :distance, :time, :mapimage)
  end
end
