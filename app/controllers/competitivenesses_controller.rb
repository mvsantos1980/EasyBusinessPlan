class CompetitivenessesController < ApplicationController
  before_action :set_competitiveness, only: [:show, :edit, :update, :destroy]

  # GET /competitivenesses
  # GET /competitivenesses.json
  def index
    @competitivenesses = Question.where('group_id = 5')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /competitivenesses/1
  # GET /competitivenesses/1.json
  def show
    redirect_to answers_path
  end

  # GET /competitivenesses/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 5')
    @method = 'create'
  end

  # GET /competitivenesses/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /competitivenesses
  # POST /competitivenesses.json
  def create
    params[:competitiveness][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:competitiveness][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /competitivenesses/1
  # PATCH/PUT /competitivenesses/1.json
  def update
    redirect_to answers_path
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
    redirect_to answers_path
    @competitiveness.destroy
    respond_to do |format|
      format.html { redirect_to competitivenesses_url, notice: 'Competitiveness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_competitiveness
    redirect_to answers_path
    # @competitiveness = Competitiveness.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def competitiveness_params
    redirect_to answers_path
    params.fetch(:competitiveness, {})
  end
end
