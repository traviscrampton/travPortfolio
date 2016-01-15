class PostsController < ApplicationController

  def new
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.new
  end

  def create
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.new(post_params)
      if @post.save
        redirect_to blog_path(@blog)
      else
        render :new
      end
    end

  def edit
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.find(params[:id])
    render :edit
  end

  def update
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to blog_path(@blog)
    else
      render :edit
    end
  end

  def destroy
   @blog = Blog.find(params[:blog_id])
   @post = @blog.posts.find(params[:id])
   @post.destroy
   redirect_to blog_path(@blog)
 end


  private
    def post_params
      params.require(:post).permit(:content)
    end
  end
