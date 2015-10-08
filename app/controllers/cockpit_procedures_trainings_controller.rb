class CockpitProceduresTrainingsController < ApplicationController
  before_action :set_cockpit_procedures_training, only: [:show, :edit, :update, :destroy]

  # GET /cockpit_procedures_trainings
  # GET /cockpit_procedures_trainings.json
  def index
    @cockpit_procedures_trainings = CockpitProceduresTraining.all
  end

  # GET /cockpit_procedures_trainings/1
  # GET /cockpit_procedures_trainings/1.json
  def show
  end

  # GET /cockpit_procedures_trainings/new
  def new
    @cockpit_procedures_training = CockpitProceduresTraining.new
    @training_records = TrainingRecord.all
  end

  # GET /cockpit_procedures_trainings/1/edit
  def edit
  end

  # POST /cockpit_procedures_trainings
  # POST /cockpit_procedures_trainings.json
  def create
    @cockpit_procedures_training = CockpitProceduresTraining.new(cockpit_procedures_training_params)
    @cockpit_procedures_training.user = current_user
    @training_records = TrainingRecord.all
 

    respond_to do |format|
      if @cockpit_procedures_training.save
        format.html { redirect_to :training_records, notice: 'Cockpit procedures training was successfully created.' }
        format.json { render :show, status: :created, location: @cockpit_procedures_training }
      else
        format.html { render :new }
        format.json { render json: @cockpit_procedures_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cockpit_procedures_trainings/1
  # PATCH/PUT /cockpit_procedures_trainings/1.json
  def update
    respond_to do |format|
      if @cockpit_procedures_training.update(cockpit_procedures_training_params)
        format.html { redirect_to @cockpit_procedures_training, notice: 'Cockpit procedures training was successfully updated.' }
        format.json { render :show, status: :ok, location: @cockpit_procedures_training }
      else
        format.html { render :edit }
        format.json { render json: @cockpit_procedures_training.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cockpit_procedures_trainings/1
  # DELETE /cockpit_procedures_trainings/1.json
  def destroy
    @cockpit_procedures_training.destroy
    respond_to do |format|
      format.html { redirect_to cockpit_procedures_trainings_url, notice: 'Cockpit procedures training was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cockpit_procedures_training
      @cockpit_procedures_training = CockpitProceduresTraining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cockpit_procedures_training_params
      params.require(:cockpit_procedures_training).permit(:date_completed, :trainee_id, :user_id, :training_record_id)
    end
end
