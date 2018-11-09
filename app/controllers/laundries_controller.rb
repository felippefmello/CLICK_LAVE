class LaundriesController < ApplicationController
  before_action :set_laundry, only: [:show, :edit, :update, :destroy]

  def index
    @laundries = Laundry.where.not(latitude: nil, longitude: nil)

    if params[:query].present?
      @laundries = Laundry.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @laundries = Laundry.all
    end

    @markers = @laundries.map do |laundry|
      {
        lat: laundry.latitude,
        lng: laundry.longitude,
        infoWindow: { content: render_to_string(partial: "/laundries/map_box", locals: { laundry: laundry }) }
      }
    end
  end

  def show
    @order = Order.new
  end

  def new
    @laundry = Laundry.new
  end

  def create
    @laundry = Laundry.new(laundry_params)
    @laundry.user = current_user
    if @laundry.save
      redirect_to laundry_path(@laundry)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @laundry.update(laundry_params)
    # redirect_to laundry_path(@laundry)
  end

  def destroy
    @laundry.destroy
    # redirect_to laundries_path
  end

  private

  def laundry_params
    params.require(:laundry).permit(:name, :address, :cnpj, :price_kg)
  end

  def set_laundry
    @laundry = Laundry.find(params[:id])
  end
end
