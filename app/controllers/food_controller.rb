class FoodController < ApplicationController
  # -cut-

  # GET /foods
  # GET /foods.json
  def index
    @foods = params[:letter].nil? ? Food.all : Food.by_letter(params[:letter])
  end

  # -cut-
end