class MCitiesController < ApplicationController
  before_action :set_m_city, only: [:show, :update, :destroy]

  # GET /m_cities
  def index
    @m_cities = MCity.all

    render json: @m_cities
  end

  # GET /m_cities/1
  def show
    render json: @m_city
  end

  # POST /m_cities
  def create
    @m_city = MCity.new(m_city_params)

    if @m_city.save
      render json: @m_city, status: :created, location: @m_city
    else
      render json: @m_city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /m_cities/1
  def update
    if @m_city.update(m_city_params)
      render json: @m_city
    else
      render json: @m_city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /m_cities/1
  def destroy
    @m_city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_city
      @m_city = MCity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def m_city_params
      params.permit(:pref_id, :city_name)
    end
end
