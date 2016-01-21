class LifestylesController < ApplicationController

  def index
    @posts = Post.all.where(page: :lifestyle).order("created_at DESC")
  end

end
