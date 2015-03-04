class ArticlesController < ApplicationController
#   before_action :find only:[:edit, :update, :destroy, :create]

  def show    
  end

  def index    
  end
  
  def new
    @article= Article.new
  end
  
  def create
    @article= Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end    
  end
  
  def update
    
  end
  
  def edit
    
  end
  
  def destroy
    
  end
  
  private
  
  def find
    
  end
  
  def article_params
    params.require(:article).permit(:title, :content)
  end  
end
