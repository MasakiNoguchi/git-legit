class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to user_path(@current_user)
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:title, :body, :photo)
  end
end
