class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(like_params)
    respond_to do |format|
      format.html {redirect_to controller: :posts, action: :index}
      format.js
    end

    @post = Post.find(params[:like][:post_id])
    #@post = Post.new
    #@posts = current_user.feed
  end

  def destroy
    @like = current_user.likes.find_by(post_id: params[:post_id]).destroy
    respond_to do |format|
      format.html {redirect_to controller: :posts, action: :index}
      format.js
    end

    @post = Post.find(params[:post_id])
    #@post = Post.new
    #@posts = current_user.feed
  end

  private
    def like_params
      params.require(:like).permit(:user_id, :post_id)
    end
end
