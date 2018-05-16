class PostsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @posts = Post.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @posts = Post.where(category_id: @category_id).order("created_at DESC")
    end
  end

  def show

  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    if @post.save
      redirect_to @post, notice: "The post was created!"
    else
      render 'new'
    end
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    if @post.update(post_params)
      redirect_to @post, notice: "The post was updated successfully!"
    else
      render 'edit'
    end
  end

  def destroy
    authorize @post
    @post.destroy
    redirect_to posts_path, notice: "Post destroyed :("
  end

  private



  def post_params
   params.require(:post).permit(:title, :content, :category_id, :photo, :user_id)
  end

  def find_post
     @post = Post.find(params[:id])
  end

end
