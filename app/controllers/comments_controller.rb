class CommentsController < ApplicationController
  before_action :set_article, only: [:create, :destroy]

  def create
    @comment = @article.comments.new(comments_params)
    @comment.user_id = current_user.id
    if @comment.save!
      redirect_to @article
    else
      render @article, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @article
  end

  private
  def set_article
    @article = Article.find(params[:article_id])
  end

  def comments_params
    params.require(:comment).permit(:description)
  end
end