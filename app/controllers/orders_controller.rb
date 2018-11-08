class OrdersController < ApplicationController
  def new
    laundry_id = params[:laundry_id]
  end

  def create
    @order = Order.new(order_params)
    @order.laundry = Laundry.find(params[:laundry_id])
    @order.user = current_user
    @order.status = false
    @order.save
    redirect_to laundry_laundry_orders_path
  end

  def index
    @orders = current_user.orders.all
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(:order_kg, :laundry_id, :status)

  end

end
