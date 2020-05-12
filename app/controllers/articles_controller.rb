class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
