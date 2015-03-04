class ArticlesController < ApplicationController
  before_action :find_article, only:[:edit, :update, :destroy, :show]
  before_action :authenticate_user!, except:[:show, :index]

  def show    
  end

  def index    
    @articles = Article.all.order("created_at DESC")
  end
  
  def new
    @article= current_user.articles.build
  end
  
  def create
    @article= current_user.articles.build(article_params)
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
  
  def find_article
    @article=Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :content)
  end  
end
