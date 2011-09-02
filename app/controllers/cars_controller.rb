class CarsController < ApplicationController

  def index
    @cars = Car.all

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @car = Car.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @car = Car.new(params[:car])

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.js { redirect_to @car, notice: 'Car was successfully created.' }
      else
        format.html { render action: "new" }
        format.js { render action: "new" }
      end
    end
  end

  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update_attributes(params[:car])
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.js { redirect_to @car, notice: 'Car was successfully updated.' }
      else
        format.html { render action: "edit" }
        format.js { render action: "edit" }
      end
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url }
      format.js { redirect_to cars_url }
    end
  end
end
