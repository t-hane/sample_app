class PostsController < ApplicationController

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts
  def create
    @post = Post.new
    @post.attributes = params.require(:post).permit(:title, :body)
    @post.save
  end

  # GET /posts/:id
  def show
    @post = Post.find params[:id]
  end

  # GET /posts/:id/edit
  def edit
    @post = Post.find params[:id]
  end

  # PATCH /posts/:id
  def update
    @post = Post.find params[:id]
    @post.attributes = params.require(:post).permit(:title, :body)
    @post.save
  end

  # DELETE /posts/:id
  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to :posts
  end
end
