class ArticlesController < ApplicationController
  
  before_filter :find_article, :only => [:show, :edit, :update]
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:notice] = "Article has been created."
      redirect_to articles_path
    else
      flash[:alert] = "Article has not been created."
      render :action => "new"
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @article.update_attributes(params[:article])
      flash[:notice] = "Article has been updated."
      redirect_to article_path(@article)
    else
      flash[:alert] = "Article has not been updated."
      render :action => "edit"
    end
  end
  
private 
  def find_article
    begin
      @article = Article.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "Requested article could not be found."
      redirect_to root_path
    end
  end
end
