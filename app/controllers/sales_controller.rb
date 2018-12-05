class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  # GET /sales
  # GET /sales.json
  def index
    @sales = Question.where('group_id = 9')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
    redirect_to answers_path
  end

  # GET /sales/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 9')
    @method = 'create'
  end

  # GET /sales/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /sales
  # POST /sales.json
  def create
    params[:sale][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:sale][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário respondido com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    redirect_to answers_path
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      redirect_to answers_path
      # @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      redirect_to answers_path
      params.fetch(:sale, {})
    end
end
