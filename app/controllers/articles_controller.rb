class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    @article = Article.find(params[:id])
  end

  def update
    puts "AAAAA"
    puts params[:article]
    puts "BBBBBB"
    title = params[:article][:title]
    desc = params[:article][:description]

    @article = Article.find(params[:id])
    @article.update(title: title, description: desc)
    redirect_to article_path(@article)
  end
end
