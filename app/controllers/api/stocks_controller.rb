class Api::StocksController < ApplicationController

	def create
		@stock = current_user.stocks.build(stock_params)
		@stock.save
		respond_with @stock
	end

	def show
		respond_with current_user.stocks.find(params[:id])
	end

	private

	def stock_params
      params.permit(:code, :name, :market, :buying_price, :current_price, :bought_at)
  end
end
