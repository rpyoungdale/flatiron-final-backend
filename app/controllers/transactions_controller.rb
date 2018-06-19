class TransactionsController < ApplicationController
  before_action :find_transaction, only: [:destroy]

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def create
    @transaction = Transaction.create(transaction_params)
    render json: @transaction, status: :accepted
  end

  # def update
  #   @transaction.update(transaction_params)
  #   if @transaction.save
  #     render json: @transaction, status: :accepted
  #   else
  #     render json: { errors: @transaction.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  def destroy
    @transaction.destroy
  end

  private

  def transaction_params
    params.permit(:merchant, :amount, :category_id, :budget_id)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end
end
