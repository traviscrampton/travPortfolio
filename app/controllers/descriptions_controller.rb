class DescriptionsController < ApplicationController

  def new
    @blog = Blog.find(params[:blog_id])
    @description = @blog.descriptions.new
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @description = @blog.descriptions.new(description_params)
      if @description.save
        redirect_to blogs_path(@blog)
      else
        render :new
      end
    end

  def edit
    @blog = Blog.find(params[:blog_id])
    @description = @blog.descriptions.find(params[:id])
    render :edit
  end

  def update
    @blog = Blog.find(params[:blog_id])
    @description = @blog.descriptions.find(params[:id])
    if @description.update(description_params)
      redirect_to blog_path(@blog)
    else
      render :edit
    end
  end

  def destroy
   @blog = Blog.find(params[:blog_id])
   @description = @blog.descriptions.find(params[:id])
   @description.destroy
   redirect_to blog_path(@blog)
 end


  private
    def description_params
      params.require(:description).permit(:content, :pic)
    end
  end
