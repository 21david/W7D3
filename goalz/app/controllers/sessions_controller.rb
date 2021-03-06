class SessionsController < ApplicationController
    def new
        @user = User.new
        render :new
    end
    
    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if @user
            login(@user)
            redirect_to user_url(@user)
        else
            flash.now[:errors] = ['Wrong email and/or password']
            render :new
        end
    end

    def show
        @user = User.last
        render :show
    end
end
