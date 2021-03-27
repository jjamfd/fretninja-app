class TrumpetStudiesController < ApplicationController
  before_action :set_trumpet_study, only: %i[ show edit update destroy ]

  # GET /trumpet_studies or /trumpet_studies.json
  def index
    @trumpet_studies = TrumpetStudy.all
  end

  # GET /trumpet_studies/1 or /trumpet_studies/1.json
  def show
  end

  # GET /trumpet_studies/new
  def new
    @trumpet_study = TrumpetStudy.new
  end

  # GET /trumpet_studies/1/edit
  def edit
  end

  # POST /trumpet_studies or /trumpet_studies.json
  def create
    @trumpet_study = TrumpetStudy.new(trumpet_study_params)

    respond_to do |format|
      if @trumpet_study.save
        format.html { redirect_to @trumpet_study, notice: "Trumpet study was successfully created." }
        format.json { render :show, status: :created, location: @trumpet_study }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trumpet_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trumpet_studies/1 or /trumpet_studies/1.json
  def update
    respond_to do |format|
      if @trumpet_study.update(trumpet_study_params)
        format.html { redirect_to @trumpet_study, notice: "Trumpet study was successfully updated." }
        format.json { render :show, status: :ok, location: @trumpet_study }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trumpet_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trumpet_studies/1 or /trumpet_studies/1.json
  def destroy
    @trumpet_study.destroy
    respond_to do |format|
      format.html { redirect_to trumpet_studies_url, notice: "Trumpet study was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trumpet_study
      @trumpet_study = TrumpetStudy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trumpet_study_params
      params.fetch(:trumpet_study, {})
    end
end
