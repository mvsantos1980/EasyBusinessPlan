class ContextualizationsController < ApplicationController
  before_action :set_contextualization, only: [:show, :edit, :update, :destroy]

  # GET /contextualizations
  # GET /contextualizations.json
  def index
    @contextualizations = Question.where('group_id = 1')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /contextualizations/1
  # GET /contextualizations/1.json
  def show
    redirect_to answers_path
  end

  # GET /contextualizations/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 2')
    @method = 'create'
  end

  # GET /contextualizations/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /contextualizations
  # POST /contextualizations.json
  def create
    params[:contextualization][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:contextualization][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /contextualizations/1
  # PATCH/PUT /contextualizations/1.json
  def update
    redirect_to answers_path
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
    redirect_to answers_path
    params.fetch(:contextualization, {})
  end
end
