class CommentsController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!
  def create
  	@comment = @post.comments.new(comment_parmas)
  	@comment.user = current_user
  	@comment.save
  	redirect_back(fallback_location: root_path)
  end
  private
  def comment_parmas
  	params.require(:comment).permit(:body, :post_id)
  end
  def set_post
  	@post = Post.find(params[:post_id])
  end
end
