class BeautifulsController < ApplicationController
  def index
    @posts = Post.all.where(page: :beautiful).order("created_at DESC")
  end
end
