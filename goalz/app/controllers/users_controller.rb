class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_session_url
        else
            flash[:errors] = @user.errors.full_messages
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
