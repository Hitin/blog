class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    a = Article.create(name: params["name"], text: params["text"])
    redirect_to action: :index
  end
end
