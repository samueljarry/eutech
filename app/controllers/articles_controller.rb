class ArticlesController < ApplicationController
  def index
    @articles = Article.high_stock
    @lowStockArticles = Article.low_stock
    @soldOutArticles = Article.sold_out
  end
end
