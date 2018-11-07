class OrdersController < ApplicationController
  def new
    laundry_id = params[:laundry_id]
  end

  def create
  end

  def index
    @orders = current_user.orders.all
  end

  def show
  end

  private

end
