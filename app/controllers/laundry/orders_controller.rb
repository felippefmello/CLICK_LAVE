class Laundry::OrdersController < ApplicationController
  def index
    @orders = Order.where(laundry: current_user.laundries).all.sort_by{|order| order.status ? 1 : 0}
  end
end
