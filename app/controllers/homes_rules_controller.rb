class HomesRulesController < ApplicationController
  before_action :set_homes_rule, only: [:show, :update, :destroy]

  # GET /homes_rules
  def index
    @homes_rules = HomesRule.all

    render json: @homes_rules
  end

  # GET /homes_rules/1
  def show
    render json: @homes_rule
  end

  # POST /homes_rules
  def create
    @homes_rule = HomesRule.new(homes_rule_params)

    if @homes_rule.save
      render json: @homes_rule, status: :created, location: @homes_rule
    else
      render json: @homes_rule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /homes_rules/1
  def update
    if @homes_rule.update(homes_rule_params)
      render json: @homes_rule
    else
      render json: @homes_rule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /homes_rules/1
  def destroy
    @homes_rule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homes_rule
      @homes_rule = HomesRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def homes_rule_params
      params.require(:homes_rule).permit(:rule_id, :home_id)
    end
end
