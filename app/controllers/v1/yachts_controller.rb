class V1::YachtsController < ApplicationController
  before_action :set_yacht, only: %i[show update destroy]
  # before_action :authenticate_user!

  # GET /yachts
  def index
    @yachts = Yacht.all

    render json: YachtSerializer.new(@yachts).serializable_hash[:data], status: :ok
  end

  # GET /yachts/1
  def show
    render json: YachtSerializer.new(@yacht).serializable_hash[:data][:attributes], status: :ok
  end

  # POST /yachts
  def create
      @yacht = Yacht.new(yacht_params)
      if @yacht.save
        render json: YachtSerializer.new(@yacht).serializable_hash[:data][:attributes], status: :created
      else
        render json: @yacht.errors, status: :unprocessable_entity
      end
  end

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
    @yacht = Yacht.find_by_id(params[:id])
    render json: { message: 'Yacht not found' }, status: 404 if @yacht.nil?
  end

  # Only allow a list of trusted parameters through.
  def yacht_params
    params.permit(:name, :description, :price, :image)
  end
end
