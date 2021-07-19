class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name, :price, :is_best_seller]
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
    # {
    #   id: cheese.id,
    #   name: cheese.name,
    #   price: cheese.price,
    #   is: cheese.is_best_seller
    # }
  end

end
