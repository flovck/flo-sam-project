 class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(cocktail_params)

    if @owner.save
      redirect_to @owner
    else
      render :new
    end
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy

   redirect_to owners_path
  end

  def update
    @owner = Owner.new(owner_params)
    if @owner.save
     redirect_to owner_path(@owner)
    else
     render :edit
    end
  end

  def edit
   @owner = Owner.new
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :phone, :address)
  end
end







