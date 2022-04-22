class OrderDetailController < ApplicationController
  def new
    @detail = OrderDetail.new
  end

  def create
    details = OrderDetail.create(params.require(:detail).permit(:orders_id, :item_id, :item_quantity, :price))

    redirect_to orders_path
  end

  def update
  end

  def destroy
  end

  def show
  end
end
