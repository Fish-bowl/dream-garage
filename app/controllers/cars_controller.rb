class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(cars_params)
    
    if @car.save
      redirect_to cars_path
    else 
      render :new 
    end
  end

  def edit 
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(cars_params)
      redirect_to cars_path
    else 
      render :edit
    end
  end

  def destroy
    Car.find(params[:id]).destroy
    redirect_to cars_path
  end


private

  def cars_params
    params.require(:car).permit(:make, :model, :year, :color, :mileage)
  end

end
