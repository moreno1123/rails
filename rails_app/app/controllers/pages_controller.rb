class PagesController < ApplicationController
  def index
    @a = Article.last(4)
  end

  def contact
  end

  def about
  end
end
