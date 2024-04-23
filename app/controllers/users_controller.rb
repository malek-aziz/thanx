class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])

    if @user.present?
      render json: @user
    else
      render json: { error: 'User does not exist' }, status: :unprocessable_entity
    end
  end
end
