class ArticlesController < ApplicationController
  def index
    @article = Article.new
    @articles = Article.order(created_at: "DESC")
  end

  def create
    Article.create(article_params)
    redirect_to :root
  end

  private
  def article_params
    params.require(:article).permit(:text, :image)
  end
end