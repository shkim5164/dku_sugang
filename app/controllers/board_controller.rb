class BoardController < ApplicationController
  def index
    @posts = Post.order(id: :desc).page(params[:page]).per(10)
  end
  
  def create
    @post = Post.create!(content: params[:content], user: params[:name])
    redirect_to '/board/index'
  end

end
