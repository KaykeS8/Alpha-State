class ProfilesController < ApplicationController
  layout "profile"
  before_action :set_user, only: [:show, :about]
  def show
    @last_two_articles = @user.articles.order(created_at: :desc)
  end
  
  def about;end
  
  private
  
  def set_user
    @user = User.find_by(username: params[:user_name])
  end
end