class CarsController < ApplicationController
  before_action :find_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all.order("created_at DESC")
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def car_params
    params.require(:car).permit(:title, :description)
  end

  def find_car
    @car = Car.find(params[:id])
  end

end
