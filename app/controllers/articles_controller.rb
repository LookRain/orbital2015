class ArticlesController < ApplicationController
<<<<<<< HEAD
    def index
        @articles = Article.all
    end
=======
    before_action :require_user, only: [:show, :edit, :update, :destroy]
    before_action :require_editor, only: [:show, :edit]
    before_action :require_admin, only: [:destroy]
>>>>>>> bdcc0741f4e070074705a49554ac4c848b948b02
    def show
        @article = Article.find(params[:id])
    end
    def new
    end
    def create
        @article = Article.new(article_params)
        
        @article.save
        redirect_to @article
    end
    
    private
    def article_params
        params.require(:article).permit(:title, :text)
    end
end
