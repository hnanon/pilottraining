class TrainingRecordsController < ApplicationController
  before_action :set_training_record, only: [:show, :edit, :update, :print, :destroy]
  layout "print", only: :print

  # GET /training_records
  # GET /training_records.json
  def index
    @training_records = TrainingRecord.all
  end

  # GET /training_records/1
  # GET /training_records/1.json
  def show
  end

  # GET /training_records/new
  def new
    @training_record = TrainingRecord.new
    @trainees = Trainee.all.order( 'last_name DESC' )
  end

  # GET /training_records/1/edit
  def edit
    @trainees = Trainee.all
  end

  # POST /training_records
  # POST /training_records.json
  def create
    @training_record = TrainingRecord.new(training_record_params)
    @training_record.set_status
    respond_to do |format|
      if @training_record.save
        format.html { redirect_to @training_record, notice: 'Training record was successfully created.' }
        format.json { render :show, status: :created, location: @training_record }
      else
        format.html { render :new }
        format.json { render json: @training_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /training_records/1
  # PATCH/PUT /training_records/1.json
  def update
    respond_to do |format|
      if @training_record.attributes = (training_record_attributes_params)
        @training_record.update_instructor(current_user, params)
        format.html { redirect_to @training_record, notice: 'Training record was successfully updated.' }
        format.json { render :show, status: :ok, location: @training_record }
      else
        format.html { render :edit }
        format.json { render json: @training_record.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def print
  end

  # DELETE /training_records/1
  # DELETE /training_records/1.json
  def destroy
    @training_record.destroy
    respond_to do |format|
      format.html { redirect_to training_records_url, notice: 'Training record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_record
      @training_record = TrainingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_record_params
      params.require(:training_record).permit(:training_classification, :trainee_id)
    end
    def training_record_attributes_params
      params.require(:training_record).permit(:training_classification, :trainee_id,
                :cockpit_procedures_completion_date,
                :flight_training_simulator_completion_date,
                :flight_training_simulator_minutes,
                :windshear_completion_date,
                :high_minimums_completion_date,
                :_1800_rvr_completion_date,
                :rnav_completion_date,
                :category_ii_completion_date,
                :oral_completion_date,
                :oral_faa,
                :proficiency_check_simulator_completion_date,
                :proficiency_check_simulator_landings,
                :proficiency_check_simulator_faa,
                :loft_completion_date,
                :loft_landings)
    end
end
