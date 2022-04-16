class CcommentsController < ApplicationController
  before_action :authenticate_user!
  
  
  def create
    @a = Article.find(params[:article_id])
    @c = @a.comments.create(params[:comment].permit(:body))
    @c.user_id = current_user.id if current_user
    
    
    if @c.save
      redirect_to article_path(@a), notice: "Your comment has been saved!"
    else
      redirect_to 'new'
    end
  end
  
  def update
    @a = Article.find(params[:article_id])
    @c = @a.comments.find(params[:id])
    
    if @c.update(params[:comment].permit(:body))
      redirect_to article_path(@a), notice: "Your comment has been updated!"
    else
      render 'edit'
    end
    
  end
  
  def edit
    @a = Article.find(params[:article_id])
    @c = @a.comments.find(params[:id])
  end
  
  def destroy
    @a = Article.find(params[:article_id])
    @c = @a.comments.find(params[:id])
    @c.destroy
    
    redirect_to article_path(@a), notice: "Your comment has been deleted!"
  end
  
end