  class LiftsController < ApplicationController
  def index
    @lifts = Lift.all
  end

  def show
    @lift = Lift.find(params[:id])
  end

  def new
    @lift = Lift.new
  end

  def create
    @lift = Lift.new(lift_params)
    if @lift.save
      redirect_to @lift
    else
      render :new
    end
  end

  def destroy
    @lift = Lift.find(params[:id])
    @lift.destroy
   redirect_to lifts_path
  end

  def update
    @lift = Lift.new(lift_params)
    if @lift.save
     redirect_to lift_path(@lift)
    else
     render :edit
    end
  end

  def edit
   @lift = Lift.new
  end

  private

  def lift_params
    params.require(:lift).permit(:name, :adress, :photo, :photo_cache)
  end

end







