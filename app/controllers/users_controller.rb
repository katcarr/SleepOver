class UsersController < ApplicationController
  # def new
  #   @user
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     flash(:notice) = "Login successful"
  #     redirect_to spaces_path
  #   else
  #     flash(:alert) = "There was problem with creating your account"
  #     redirect_to :back
  #   end
  # end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
