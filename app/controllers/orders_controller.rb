class OrdersController < ApplicationController
  def new
    laundry_id = params[:laundry_id]
  end

  def create
    @order = Order.new(order_params)
    @order.laundry = Laundry.find(params[:laundry_id])
    @order.user = current_user
    @order.status = false
    if @order.save
      redirect_to orders_path
    else
      redirect_to user_session_path
    end
  end

  def index
    @orders = current_user.orders.all.sort_by{|order| order.status ? 1 : 0}
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(:order_kg, :laundry_id, :status)

  end

end
