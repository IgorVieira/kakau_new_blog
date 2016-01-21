class LooksController < ApplicationController

  def index
    @posts = Post.all.where(page: :look).order("created_at DESC").paginate(page: params[:page], per_page: 2)
  end

end
