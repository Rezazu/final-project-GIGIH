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
    orders = Order.create(params.require(:order).permit(:email, :detail_id, :date, :status, :item_quantity))

    redirect_to orders_path
  end

  def get_total_price(id)
    @foods = Food.all
    
  end

  def update
  end

  def destroy
    @get_id = Order.find(params[:id])
    
    @get_id.destroy
    redirect_to orders_index_path, notice: 'Order berhasil dihapus'
  end
end
