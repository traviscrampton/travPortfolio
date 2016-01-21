class PicsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def new
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.new
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.new(pic_params)
      if @pic.save
        redirect_to blog_path(@blog)
      else
        render :new
      end
    end

  def edit
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.find(params[:id])
    render :edit
  end

  def show
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.find(params[:id])
    if @pic.update(pic_params)
      redirect_to blog_path(@blog)
    else
      render :edit
    end
  end

  def destroy
   @blog = Blog.find(params[:blog_id])
   @pic = @blog.pics.find(params[:id])
   @pic.destroy
   redirect_to blog_path(@blog)
 end


  private
    def pic_params
      params.require(:pic).permit(:photo)
    end
  end
