class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    @user.save!
    # redirect_to list_path
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    # redirect_to (page mon compte)
    # else
    #   render 'edit'
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # redirect_to lists_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:name, :super_power, :email, :password, :owner)
  end
end
