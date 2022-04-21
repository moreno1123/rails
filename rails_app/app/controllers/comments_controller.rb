class CommentsController < ApplicationController
  before_action :authenticate_user!
     
     
  def  create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    @comment.user_id = current_user.id if current_user
    

      if @comment.save
        redirect_to article_path(@article), notice: 'Your comment has been saved!'
      else 
        redirect_to 'new'
      end
  end
  
  def  update
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
    

    
      if @comment.update(comment_params)
        redirect_to article_path(@article), notice: 'Your comment has been updated!'
      else 
        render 'edit'
      end
  end
  
  def  edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end
  
  def  delete
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    
    @comment.destroy
    redirect_to article_path(@article), notice: 'Your comment has been deleted!'
  end

    private
      def comment_params
        params.require(:comment).permit(:body)
      end

end
