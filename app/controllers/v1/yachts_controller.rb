class V1::YachtsController < ApplicationController
  before_action :set_yacht, only: %i[show update destroy]
  before_action :authenticate_user!

  # GET /yachts
  def index
    @yachts = Yacht.all

    render json: @yachts
  end

  # GET /yachts/1
  def show
    render json: @yacht
  end

  # POST /yachts
  def create
    @yacht = Yacht.new(yacht_params)

    if @yacht.save
      render json: @yacht, status: :created
    else
      render json: @yacht.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yachts/1
  # def update
  #   if @yacht.update(yacht_params)
  #     render json: @yacht
  #   else
  #     render json: @yacht.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /yachts/1
  def destroy
    if @yacht.destroy
      render json: { message: 'Yacht deleted' }, status: 200
    else
      render json: { message: 'Yacht could not be deleted' }, status: 500
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def yacht_params
    params.permit(:name, :description, :price, :image)
  end
end
