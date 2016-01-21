class LooksController < ApplicationController

  def index
    @posts = Post.all.where(page: :look).order("created_at DESC")
  end

end
