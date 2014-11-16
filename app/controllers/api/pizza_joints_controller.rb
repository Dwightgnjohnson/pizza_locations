class Api::PizzaJointsController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    @points = Point.all
    render json: @points
  end

  def create
    @point = Point.new(params.require(:point).permit(:name))
    @point.save
    render json: @point
  end
end
