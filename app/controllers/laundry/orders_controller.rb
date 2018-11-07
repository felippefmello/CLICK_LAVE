class Laundry::OrdersController < ApplicationController
  def index
    @orders = Order.where(laundry: current_user.laundries).all
  end
end
