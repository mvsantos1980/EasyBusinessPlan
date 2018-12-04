class FinancesController < ApplicationController
  before_action :set_finance, only: [:show, :edit, :update, :destroy]

  # GET /finances
  # GET /finances.json
  def index
    @finances = Question.where('group_id = 7')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /finances/1
  # GET /finances/1.json
  def show
    redirect_to answers_path
  end

  # GET /finances/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 7')
    @method = 'create'
  end

  # GET /finances/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /finances
  # POST /finances.json
  def create
    params[:finance][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:finance][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /finances/1
  # PATCH/PUT /finances/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @finance.update(finance_params)
        format.html { redirect_to @finance, notice: 'Finance was successfully updated.' }
        format.json { render :show, status: :ok, location: @finance }
      else
        format.html { render :edit }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finances/1
  # DELETE /finances/1.json
  def destroy
    redirect_to answers_path
    @finance.destroy
    respond_to do |format|
      format.html { redirect_to finances_url, notice: 'Finance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_finance
    redirect_to answers_path
    # @finance = Finance.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def finance_params
    redirect_to answers_path
    params.fetch(:finance, {})
  end
end
