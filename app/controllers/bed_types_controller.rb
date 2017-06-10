class BedTypesController < ApplicationController
  before_action :set_bed_type, only: [:show, :update, :destroy]

  # GET /bed_types
  def index
    @bed_types = BedType.all

    render json: @bed_types
  end

  # GET /bed_types/1
  def show
    render json: @bed_type
  end

  # POST /bed_types
  def create
    @bed_type = BedType.new(bed_type_params)

    if @bed_type.save
      render json: @bed_type, status: :created, location: @bed_type
    else
      render json: @bed_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bed_types/1
  def update
    if @bed_type.update(bed_type_params)
      render json: @bed_type
    else
      render json: @bed_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bed_types/1
  def destroy
    @bed_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed_type
      @bed_type = BedType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bed_type_params
      params.permit(:name)
    end
end
