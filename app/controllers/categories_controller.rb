class CategoriesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :update]
  before_action :find_category, only: [:update]

  def index
    @categories = Category.all
    render json: @categories
  end

  def create

    # byebug
    @category = Category.create(name: params[:name], limit: params[:limit], budget_id: params[:budget_id])
    if params[:amount]
      @transaction = Transaction.create(merchant: nil, amount: params[:amount], category_id: @category.id)
    end
    puts @category.errors.full_messages
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
    params.permit(:name, :limit, :budget_id)
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
