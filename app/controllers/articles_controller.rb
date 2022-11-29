class ArticlesController < ApplicationController

  def index
    @highStockArticles = Article.high_stock
    @lowStockArticles = Article.low_stock
    @soldOutArticles = Article.sold_out
  end

  def show
    @articles = authorize :admin
  end
end
