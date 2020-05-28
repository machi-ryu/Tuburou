class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @posts = @user.post
        @likes = Like.all
    end
end
