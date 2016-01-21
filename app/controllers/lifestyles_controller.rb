class LifestylesController < ApplicationController

  def index
    @posts = Post.all.where(page: :lifestyle).order("created_at DESC").paginate(page: params[:page], per_page: 4)
  end

end
