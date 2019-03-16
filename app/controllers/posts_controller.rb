class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order("created_at desc")
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.create(post_params)
    @post.user = current_user
    if @post.save
      flash[:success] = "Post created successfully"
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post updated successfully."
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def destroy
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
