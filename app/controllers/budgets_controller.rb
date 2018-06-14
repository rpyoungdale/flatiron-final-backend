class BudgetsController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_user, only: [:update]

  # def show_budget
  #   render json: current_user
  # end

  def index
    @budgets = Budget.all
    render json: @budgets
  end

  def create
    # byebug
    @budget = Budget.create(budget_params)
    render json: @budget, status: :accepted
  end

  # def update
  #   @budget.update(user_params)
  #   if @budget.save
  #     render json: @budget, status: :accepted
  #   else
  #     render json: { errors: @budget.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  private

  def budget_params
    params.permit(:user_id, :balance, :month, :year)
  end

  def find_user
    @budget
  end
end
