class UsersController < ApplicationController
    def show
        @user = current_user
        @microposts = @user.microposts.paginate(page: params[:page])
    end
    def index
        @users = User.all
    end
end
