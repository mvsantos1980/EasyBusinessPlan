class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  # GET /businesses
  # GET /businesses.json
  def index
    @businesses = Question.where('group_id = 2')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    redirect_to answers_path
  end

  # GET /businesses/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 2')
    @method = 'create'
  end

  # GET /businesses/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /businesses
  # POST /businesses.json
  def create
    params[:business][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:business][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /businesses/1
  # PATCH/PUT /businesses/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    redirect_to answers_path
    @business.destroy
    respond_to do |format|
      format.html { redirect_to businesses_url, notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_business
    redirect_to answers_path
    # @business = Business.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def business_params
    redirect_to answers_path
    params.fetch(:business, {})
  end
end
