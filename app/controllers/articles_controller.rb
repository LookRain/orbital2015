class ArticlesController < ApplicationController
    before_action :require_user, only: [:show, :edit, :update, :destroy]
    before_action :require_editor, only: [:show, :edit]
    before_action :require_admin, only: [:destroy]
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
