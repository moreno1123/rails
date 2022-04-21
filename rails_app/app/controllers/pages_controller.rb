class PagesController < ApplicationController
  def index
    @article = Article.last(4)
  end
end
