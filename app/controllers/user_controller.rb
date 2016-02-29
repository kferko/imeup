class UserController < ApplicationController
	def new
	    @user = User.new
	end

	def index
	end

	def update
	    @user = User.find_by_id(params[:id])
	    if @user.update(user_update)
	    redirect_to @user.profile
	  else
	    render 'edit'
	  end
	end

	def edit
	    @user = User.find(params[:id])
	end

	def show
	     @user = User.find(params[:id])
	end

private

	def user_params
	    params.require(:user).permit(:email, :password)
	end
end
