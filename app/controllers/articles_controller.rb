class ArticlesController < ApplicationController
    before_action :authenticate_user!
    before_action :find_article, only: [:show, :destroy]

    def show
      @comment = Comment.new
    end

    def new;
      @article = Article.new
    end

    def create
      @article = Article.new(articles_params)
      @article.user = current_user
      if @article.save 
        redirect_to @article
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy
      redirect_to root_path, status: :see_other
    end

    private

    def articles_params
      params.require(:article).permit(:title, :content, :cover, :category_id)
    end

    def find_article
      @article = Article.find(params[:id])
    end
end
