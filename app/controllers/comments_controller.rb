class CommentsController < ApplicationController
  before_action :set_article, only: [:create, :destroy]
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @comment = @article.comments.new(comments_params)
    @comment.user_id = current_user.id
    if @comment.save!
      respond_to do |format|
        format.html { redirect_to  @article, notice: "comment was successfully created." }
        format.turbo_stream
      end
    else
      render @article, status: :unprocessable_entity
    end
  end

  def edit;end

  def update
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @article, notice: "comment was successfully destroyed." }
      format.turbo_stream
    end
  end

  private
  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_comment
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def comments_params
    params.require(:comment).permit(:description)
  end
end