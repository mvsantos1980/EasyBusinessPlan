class ContextualizationsController < ApplicationController
  before_action :set_contextualization, only: [:show, :edit, :update, :destroy]

  # GET /contextualizations
  # GET /contextualizations.json
  def index
    @contextualizations = Contextualization.all
  end

  # GET /contextualizations/1
  # GET /contextualizations/1.json
  def show
  end

  # GET /contextualizations/new
  def new
    @contextualization = Contextualization.new
  end

  # GET /contextualizations/1/edit
  def edit
  end

  # POST /contextualizations
  # POST /contextualizations.json
  def create
    @contextualization = Contextualization.new(contextualization_params)

    respond_to do |format|
      if @contextualization.save
        format.html { redirect_to @contextualization, notice: 'Contextualization was successfully created.' }
        format.json { render :show, status: :created, location: @contextualization }
      else
        format.html { render :new }
        format.json { render json: @contextualization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contextualizations/1
  # PATCH/PUT /contextualizations/1.json
  def update
    respond_to do |format|
      if @contextualization.update(contextualization_params)
        format.html { redirect_to @contextualization, notice: 'Contextualization was successfully updated.' }
        format.json { render :show, status: :ok, location: @contextualization }
      else
        format.html { render :edit }
        format.json { render json: @contextualization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contextualizations/1
  # DELETE /contextualizations/1.json
  def destroy
    @contextualization.destroy
    respond_to do |format|
      format.html { redirect_to contextualizations_url, notice: 'Contextualization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contextualization
      @contextualization = Contextualization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contextualization_params
      params.fetch(:contextualization, {})
    end
end
