class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			log_in @user
			flash[:success] = "Successfully created user #{@user.login}"
			redirect_to @user 
		else
			flash[:notice] = "Unable to save user"
			render 'new'
		end
		
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else
			flash[:notice] = "Unable to edit user"
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to(:action => 'index')
	end

	private
		def user_params
			params.require(:user).permit(:login, :email, :password, :password_confirmation)
		end
end
