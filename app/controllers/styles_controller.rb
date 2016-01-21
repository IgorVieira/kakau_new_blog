class StylesController < ApplicationController

  def index
    @posts = Post.all.where(page: :style).order("created_at DESC")
  end

end
