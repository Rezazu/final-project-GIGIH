class OrdersController < ApplicationController
  protect_from_forgery
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @detail = OrderDetail.new
    @foods = Food.all
  end

  def create
    # @order = Order.new(order_params)
    # @order.item_id = Food.find(params[:id])
    # @total = @order.calculate_total(@Food.price, :item_quantity)
    orders = Order.create(params.require(:order).permit(:email, :detail_id, :date, :status, :total_price))

    redirect_to orders_path
  end

  def get_total_price(id)
    @foods = Food.all
    
  end

  def edit
    @order = Order.find(params[:id])
    @foods = Food.all
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to orders_path
  end

  def order_params
    params.require(:order).permit(:email, :detail_id, :date, :status, :total_price)
  end

  def destroy
    @get_id = Order.find(params[:id])
    
    @get_id.destroy
    redirect_to orders_index_path, notice: 'Order berhasil dihapus'
  end
end
