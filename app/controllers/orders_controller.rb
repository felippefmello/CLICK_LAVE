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
      render :new
    end
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
