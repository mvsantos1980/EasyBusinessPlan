class PricingsController < ApplicationController
  before_action :set_pricing, only: [:show, :edit, :update, :destroy]

  # GET /pricings
  # GET /pricings.json
  def index
    @pricings = Question.where('group_id = 8')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /pricings/1
  # GET /pricings/1.json
  def show
    redirect_to answers_path
  end

  # GET /pricings/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 8')
    @method = 'create'
  end

  # GET /pricings/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /pricings
  # POST /pricings.json
  def create
    params[:pricing][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:pricing][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário respondido com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /pricings/1
  # PATCH/PUT /pricings/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @pricing.update(pricing_params)
        format.html { redirect_to @pricing, notice: 'Pricing was successfully updated.' }
        format.json { render :show, status: :ok, location: @pricing }
      else
        format.html { render :edit }
        format.json { render json: @pricing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricings/1
  # DELETE /pricings/1.json
  def destroy
    redirect_to answers_path
    @pricing.destroy
    respond_to do |format|
      format.html { redirect_to pricings_url, notice: 'Pricing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricing
      redirect_to answers_path
      # @pricing = Pricing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pricing_params
      redirect_to answers_path
      params.fetch(:pricing, {})
    end
end
