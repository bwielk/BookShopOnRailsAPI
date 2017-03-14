class TransactionsController < ApplicationController

  def index
    transactions = Transaction.all
    render json: transactions.as_json({
      include: {:book => {}}
      })
  end

  def show
    transaction = Transaction.find(params[:id])
    render json: transaction
  end

  def create
    transaction = Transaction.create({
      price: params[:price],
      reader_id: params[:reader_id],
      book_id: params[:book_id]
      })
    render json: transaction
  end

end