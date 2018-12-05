class HumanResourcesController < ApplicationController
  before_action :set_human_resource, only: [:show, :edit, :update, :destroy]

  # GET /human_resources
  # GET /human_resources.json
  def index
    @human_resources = Question.where('group_id = 10')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /human_resources/1
  # GET /human_resources/1.json
  def show
    redirect_to answers_path
  end

  # GET /human_resources/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 10')
    @method = 'create'
  end

  # GET /human_resources/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /human_resources
  # POST /human_resources.json
  def create
    params[:human_resource][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:human_resource][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /human_resources/1
  # PATCH/PUT /human_resources/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @human_resource.update(human_resource_params)
        format.html { redirect_to @human_resource, notice: 'Human resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @human_resource }
      else
        format.html { render :edit }
        format.json { render json: @human_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /human_resources/1
  # DELETE /human_resources/1.json
  def destroy
    redirect_to answers_path
    @human_resource.destroy
    respond_to do |format|
      format.html { redirect_to human_resources_url, notice: 'Human resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_human_resource
    redirect_to answers_path
    # @human_resource = HumanResource.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def human_resource_params
    redirect_to answers_path
    params.fetch(:human_resource, {})
  end
end
