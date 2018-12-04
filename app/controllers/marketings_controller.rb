class MarketingsController < ApplicationController
  before_action :set_marketing, only: [:show, :edit, :update, :destroy]

  # GET /marketings
  # GET /marketings.json
  def index
    @marketings = Question.where('group_id = 6')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /marketings/1
  # GET /marketings/1.json
  def show
    redirect_to answers_path
  end

  # GET /marketings/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 6')
    @method = 'create'
  end

  # GET /marketings/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /marketings
  # POST /marketings.json
  def create
    params[:marketing][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:marketing][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /marketings/1
  # PATCH/PUT /marketings/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @marketing.update(marketing_params)
        format.html { redirect_to @marketing, notice: 'Marketing was successfully updated.' }
        format.json { render :show, status: :ok, location: @marketing }
      else
        format.html { render :edit }
        format.json { render json: @marketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketings/1
  # DELETE /marketings/1.json
  def destroy
    redirect_to answers_path
    @marketing.destroy
    respond_to do |format|
      format.html { redirect_to marketings_url, notice: 'Marketing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_marketing
    redirect_to answers_path
    # @marketing = Marketing.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def marketing_params
    redirect_to answers_path
    params.fetch(:marketing, {})
  end
end
