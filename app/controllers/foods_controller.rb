class FoodsController < ApplicationController
  protect_from_forgery
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    # @name = Item.find(params[:name])
    # @price = Item.find(params[:price])

    @food.update(foods_params)
    redirect_to foods_path
  end

  def foods_params
    params.require(:food).permit(:name, :category, :description, :price)
  end

  def new
    @food = Food.new
  end

  def create
    foods = Food.create(params.require(:food).permit(:name, :category, :description, :price))

    redirect_to foods_path
  end

  def destroy
    @get_id = Food.find(params[:id])
    
    @get_id.destroy
    redirect_to foods_index_path, notice: 'Task berhasil dihapus'
  end
end