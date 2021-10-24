class PostsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index] # pour acceder a l'index post (galerie) sans devoir s'authentifier

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new # needed to instantiate the form_for
    # authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save!
      redirect_to posts_path
    else
      render :new
    end

    # redirect_to posts_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :photo, :cathegory)
  end
end
