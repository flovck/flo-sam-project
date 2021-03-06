  class LiftsController < ApplicationController
  def index
    @lifts = Lift.all
    @markers = Gmaps4rails.build_markers(@lifts) do |lift, marker|
      marker.lat lift.latitude
      marker.lng lift.longitude
    end
  end

  def show
    @lift = Lift.find(params[:id])
    @lift_coordinates = { lat: @lift.latitude, long: @lift.longitude }
  end

  def new
    @lift = Lift.new
  end

  def create
    @lift = Lift.new(lift_params)
    @lift.user = current_user

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
    params.require(:lift).permit(:name, :address, :photo, :photo_cache)
  end
end
