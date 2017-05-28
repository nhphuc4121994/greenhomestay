class BathTypesController < ApplicationController
  before_action :set_bath_type, only: [:show, :update, :destroy]

  # GET /bath_types
  def index
    @bath_types = BathType.all

    render json: @bath_types
  end

  # GET /bath_types/1
  def show
    render json: @bath_type
  end

  # POST /bath_types
  def create
    @bath_type = BathType.new(bath_type_params)

    if @bath_type.save
      render json: @bath_type, status: :created, location: @bath_type
    else
      render json: @bath_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bath_types/1
  def update
    if @bath_type.update(bath_type_params)
      render json: @bath_type
    else
      render json: @bath_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bath_types/1
  def destroy
    @bath_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bath_type
      @bath_type = BathType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bath_type_params
      params.require(:bath_type).permit(:name)
    end
end
