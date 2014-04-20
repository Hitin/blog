class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    a = Article.create(name: params["name"], text: params["text"])
    redirect_to action: :index
  end

  def destroy
    Article.create(name: params["name"], text: params["text"])
    p Article.first
    a = Article.destroy(params["id"].to_i)
    p Article.first
    redirect_to action: :index
  end
end
