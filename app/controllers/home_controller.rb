class HomeController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @posts = Post.all
  end
end
