class HomeRulesController < ApplicationController
  before_action :set_home_rule, only: [:show, :update, :destroy]

  # GET /home_rules
  def index
    @home_rules = HomeRule.all

    render json: @home_rules
  end

  # GET /home_rules/1
  def show
    render json: @home_rule
  end

  # POST /home_rules
  def create
    @home_rule = HomeRule.new(home_rule_params)

    if @home_rule.save
      render json: @home_rule, status: :created, location: @home_rule
    else
      render json: @home_rule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /home_rules/1
  def update
    if @home_rule.update(home_rule_params)
      render json: @home_rule
    else
      render json: @home_rule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /home_rules/1
  def destroy
    @home_rule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_rule
      @home_rule = HomeRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def home_rule_params
      params.require(:home_rule).permit(:rule_id, :home_id)
    end
end
