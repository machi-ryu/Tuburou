class PostsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @post = Post.new
        #@posts = Post.all
        #@posts = current_user.post.all 
        @posts = current_user.feed 
        @likes = Like.all
    end

    def create
        #@post = Post.new(params[:post].permit(:content))
        @post = current_user.post.build(params[:post].permit(:content))
        @post.save
        redirect_to root_path
    end
end
