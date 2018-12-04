class CompetitivenessesController < ApplicationController
  before_action :set_competitiveness, only: [:show, :edit, :update, :destroy]

  # GET /competitivenesses
  # GET /competitivenesses.json
  def index
    @competitivenesses = Competitiveness.all
  end

  # GET /competitivenesses/1
  # GET /competitivenesses/1.json
  def show
  end

  # GET /competitivenesses/new
  def new
    @competitiveness = Competitiveness.new
  end

  # GET /competitivenesses/1/edit
  def edit
  end

  # POST /competitivenesses
  # POST /competitivenesses.json
  def create
    @competitiveness = Competitiveness.new(competitiveness_params)

    respond_to do |format|
      if @competitiveness.save
        format.html { redirect_to @competitiveness, notice: 'Competitiveness was successfully created.' }
        format.json { render :show, status: :created, location: @competitiveness }
      else
        format.html { render :new }
        format.json { render json: @competitiveness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitivenesses/1
  # PATCH/PUT /competitivenesses/1.json
  def update
    respond_to do |format|
      if @competitiveness.update(competitiveness_params)
        format.html { redirect_to @competitiveness, notice: 'Competitiveness was successfully updated.' }
        format.json { render :show, status: :ok, location: @competitiveness }
      else
        format.html { render :edit }
        format.json { render json: @competitiveness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitivenesses/1
  # DELETE /competitivenesses/1.json
  def destroy
    @competitiveness.destroy
    respond_to do |format|
      format.html { redirect_to competitivenesses_url, notice: 'Competitiveness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competitiveness
      @competitiveness = Competitiveness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competitiveness_params
      params.fetch(:competitiveness, {})
    end
end
