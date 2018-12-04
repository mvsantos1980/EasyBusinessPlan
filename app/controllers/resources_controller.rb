class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  # GET /resources.json
  def index
    @resources = Question.where('group_id = 4')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
    redirect_to answers_path
  end

  # GET /resources/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 4')
    @method = 'create'
  end

  # GET /resources/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /resources
  # POST /resources.json
  def create
    params[:resource][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:resource][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    redirect_to answers_path
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_resource
    redirect_to answers_path
    # @resource = Resource.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def resource_params
    redirect_to answers_path
    params.fetch(:resource, {})
  end
end
