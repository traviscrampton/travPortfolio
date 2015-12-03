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


  private
    def description_params
      params.require(:description).permit(:content, :pic)
    end
  end
