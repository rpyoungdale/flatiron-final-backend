class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_user, only: [:update]

  def show_user
    render json: current_user
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    # byebug
    @user = User.create(user_params)
    render json: @user, status: :accepted
  end

  # def update
  #   @user.update(user_params)
  #   if @user.save
  #     render json: @user, status: :accepted
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def user_params
    params.permit(:first_name, :last_name, :username, :password)
  end

  def find_user
    @user
  end

end
