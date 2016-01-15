class PicsController < ApplicationController

  def new
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.new
    @pic.build_descript
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.new(pic_params)
    if @pic.descript.subtext == ""
      binding.pry
    else
      if @pic.save
        redirect_to blog_path(@blog)
      else
        render :new
    end
      end
    end

  def edit
    @blog = Blog.find(params[:blog_id])
    @pic = @blog.pics.find(params[:id])
    render :edit
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
      params.require(:pic).permit(:photo, descript_attributes: [:subtext])
    end
  end
