class CategoriesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :update]
  before_action :find_category, only: [:update]

  def index
    @categories = Category.all
    render json: @categories
  end

  def create
    @category = Category.create(category_params)
    render json: @category, status: :accepted
  end

  # def update
  #   @category.update(category_params)
  #   if @category.save
  #     render json: @category, status: :accepted
  #   else
  #     render json: { errors: @category.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def category_params
    params.permit(:name)
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
