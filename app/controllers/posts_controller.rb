class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to @post, notice: "Postagem criada com sucesso"
    else
      render :new
    end
  end

  def edit; end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to @post, notice: "Postagem atualizada com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    if @post.destroy
      redirect_to posts_path, notice: "Postagem excluída com sucesso"
    else
      redirect_to posts_path, alert: "Erro ao excluir postagem"
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end