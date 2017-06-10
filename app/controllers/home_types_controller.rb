class HomeTypesController < ApplicationController
  before_action :set_home_type, only: [:show, :update, :destroy]

  # GET /home_types
  def index
    @home_types = HomeType.page(params[:page] ? params[:page][:number] : 1)

    render json: @home_types, meta: pagination_meta(@home_types)
  end

  # GET /home_types/1
  def show
    render json: @home_type
  end

  # POST /home_types
  def create
    @home_type = HomeType.new(home_type_params)

    if @home_type.save
      render json: @home_type, status: :created, location: @home_type
    else
      render json: @home_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /home_types/1
  def update
    if @home_type.update(home_type_params)
      render json: @home_type
    else
      render json: @home_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /home_types/1
  def destroy
    @home_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_type
      @home_type = HomeType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def home_type_params
      params.permit(:name, :image)
    end

    private
  def pagination_meta(object)
    {
      current_page: object.current_page,
      next_page: object.next_page,
      prev_page: object.previous_page,
      total_pages: object.total_pages,
      total_count: object.total_entries
    }
  end
end
