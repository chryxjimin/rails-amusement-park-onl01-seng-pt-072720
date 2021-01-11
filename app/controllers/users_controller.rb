require 'pry'
class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            session[:name] = params[:name]
            redirect_to controller: 'users', action: 'show'
        else 
            redirect_to controller: 'users'
        end 
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    def index
    end

    def destroy
        session[:name].delete
        redirect_to '/'
    end

    def user_params
        params.require(:user).permit(:name, :height, :nausea, :happiness, :tickets, :password, :admin)
    end
end
