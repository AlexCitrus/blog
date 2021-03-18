class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def edit
  end

  def create

    if Article.create(title: params[:title], content: params[:content])
        redirect_to articles_path
    else
        render :new
    end
  end

  def update
  end

  def destroy
  end
end
