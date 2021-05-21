class UsersController < ApplicationController

    before_action :authenticate_user!
    before_action :set_user, only: %i(edit update)


    def edit
    end

    def update
        if @user.update(user_params)
            redirect_to :root
        else
            render action: :edit
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :self_introduction, :twitter_account, :github_account)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
