class Api::StocksController < ApplicationController

	def create
		@stock = current_user.stocks.build(stock_params)
		if @stock.save
			Rails.logger.info("Stock is #{@stock[:id]}")
			respond_with @stock
		else
			respond_with({ error: "Unauthorized" }, status: :unauthorized)
		end
	end

	def show
		respond_with current_user.stocks.find(params[:id])
	end

	private

	def stock_params
      params.require(:stock).permit(:code, :name, :market, :buying_price, :current_price, :bought_at)
  end
end
