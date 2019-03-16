class PostsController < ApplicationController
  
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
  end

  def destroy
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
