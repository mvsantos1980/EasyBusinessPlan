class BusinessProcessesController < ApplicationController
  before_action :set_business_process, only: [:show, :edit, :update, :destroy]

  # GET /business_processes
  # GET /business_processes.json
  def index
    @business_processes = Question.where('group_id = 3')
    @answer = Answer.where('user_id = ?', current_user.id)
  end

  # GET /business_processes/1
  # GET /business_processes/1.json
  def show
    redirect_to answers_path
  end

  # GET /business_processes/new
  def new
    @answer = Answer.new
    @questions = Question.where('group_id = 3')
    @method = 'create'
  end

  # GET /business_processes/1/edit
  def edit
    redirect_to answers_path
  end

  # POST /business_processes
  # POST /business_processes.json
  def create
    params[:business_process][:question].each do |k, v|
      answer = Answer.new
      answer.user_id = params[:business_process][:user_id]
      answer.question_id = k;
      answer.answer = v;
      answer.save
    end
    respond_to do |format|
      format.html { redirect_to answers_path, notice: 'Questionário criado com sucesso.' }
      format.json { render :index, status: :created, location: @answer }
    end
  end

  # PATCH/PUT /business_processes/1
  # PATCH/PUT /business_processes/1.json
  def update
    redirect_to answers_path
    respond_to do |format|
      if @business_process.update(business_process_params)
        format.html { redirect_to @business_process, notice: 'Business process was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_process }
      else
        format.html { render :edit }
        format.json { render json: @business_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_processes/1
  # DELETE /business_processes/1.json
  def destroy
    redirect_to answers_path
    @business_process.destroy
    respond_to do |format|
      format.html { redirect_to business_processes_url, notice: 'Business process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_business_process
    redirect_to answers_path
    # @business_process = BusinessProcess.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def business_process_params
    redirect_to answers_path
    params.fetch(:business_process, {})
  end
end
