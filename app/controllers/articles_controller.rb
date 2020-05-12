class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new # needed to instantiate the form_for
  end

  def create
    @article = Article.new(article_params)
    @article.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to article_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
