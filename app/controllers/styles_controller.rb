class StylesController < ApplicationController

  def index
    @posts = Post.all.where(page: :style).order("created_at DESC").paginate(page: params[:page], per_page: 4)
  end

end
