class ArticlesController < ApplicationController
  def index
    #GET
    @articles = Article.all
  end

  def show
    #GET
    @article = Article.find(params[:id])
  end

  def new
    #GET
    @article = Article.new
  end

  def create
    #POST
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit 
    # GET
    @article = Article.find(params[:id])
  end

  def update 
    # PATCH/PUT
    # raise params.inspect
    # raise method will cause the application to pause and print out the params on an error page
    @article = Article.find(params[:id]) #article is persisted, has an id
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end
end
