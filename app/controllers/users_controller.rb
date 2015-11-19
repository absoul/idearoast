class UsersController < ApplicationController

before_action :require_id, except:[:index, :new]

	def index
		@users = User.all
	end
	
	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user, notice:"Your account has been created"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to @user, notice: "User successfully updated"
		else
			render :edit
		end
	end

	def destroy
		@user.destroy
		redirect_to root, notice: "User successfully deleted"
	end

private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :location, :email, :password, :password_confirmation)
	end

	def require_id
		@user = User.find(params[:id])
	end

end
