class FixedCostsController < ApplicationController
  before_action :set_fixed_cost, only: [:show, :edit, :update, :destroy]

  # GET /fixed_costs
  # GET /fixed_costs.json
  def index
    @fixed_costs = FixedCost.where('user_id = ?', current_user.id)
  end

  # GET /fixed_costs/1
  # GET /fixed_costs/1.json
  def show
  end

  # GET /fixed_costs/new
  def new
    @fixed_cost = FixedCost.where('user_id = ?', current_user.id).limit(1)
    if (@fixed_cost.blank?)
      @fixed_cost = FixedCost.new
    else
      @fixed_cost.each do |cost|
        redirect_to edit_fixed_cost_path(cost)
      end
    end
  end

  # GET /fixed_costs/1/edit
  def edit
  end

  # POST /fixed_costs
  # POST /fixed_costs.json
  def create
    @fixed_cost = FixedCost.new(fixed_cost_params)

    respond_to do |format|
      if @fixed_cost.save
        format.html { redirect_to @fixed_cost, notice: 'Fixed cost was successfully created.' }
        format.json { render :show, status: :created, location: @fixed_cost }
      else
        format.html { render :new }
        format.json { render json: @fixed_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixed_costs/1
  # PATCH/PUT /fixed_costs/1.json
  def update
    respond_to do |format|
      if @fixed_cost.update(fixed_cost_params)
        format.html { redirect_to @fixed_cost, notice: 'Fixed cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixed_cost }
      else
        format.html { render :edit }
        format.json { render json: @fixed_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_costs/1
  # DELETE /fixed_costs/1.json
  def destroy
    @fixed_cost.destroy
    respond_to do |format|
      format.html { redirect_to fixed_costs_url, notice: 'Fixed cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_cost
      @fixed_cost = FixedCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixed_cost_params
      params.require(:fixed_cost).permit(:water, :light, :telephone, :counter, :vehicle, :officeSupplies, :rental, :maintenance, :taxes, :other, :user_id)
    end
end
