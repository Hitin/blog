class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    a = Article.create(name: params["name"], text: params["text"])
    redirect_to action: :index
  end

  def destroy
    atr = Article.find(params["id"])
    a = Article.destroy(atr.id)
    redirect_to action: :index
  end

  def update
    a = Article.update(params["id"], {name: params["name"]})
    redirect_to action: :index
  end
end
