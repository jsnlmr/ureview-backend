class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end
  def create
    render json: User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email)
  end
end
