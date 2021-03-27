class PianoStudiesController < ApplicationController
  before_action :set_piano_study, only: %i[ show edit update destroy ]

  # GET /piano_studies or /piano_studies.json
  def index
    @piano_studies = PianoStudy.all
  end

  # GET /piano_studies/1 or /piano_studies/1.json
  def show
  end

  # GET /piano_studies/new
  def new
    @piano_study = PianoStudy.new
  end

  # GET /piano_studies/1/edit
  def edit
  end

  # POST /piano_studies or /piano_studies.json
  def create
    @piano_study = PianoStudy.new(piano_study_params)

    respond_to do |format|
      if @piano_study.save
        format.html { redirect_to @piano_study, notice: "Piano study was successfully created." }
        format.json { render :show, status: :created, location: @piano_study }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @piano_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piano_studies/1 or /piano_studies/1.json
  def update
    respond_to do |format|
      if @piano_study.update(piano_study_params)
        format.html { redirect_to @piano_study, notice: "Piano study was successfully updated." }
        format.json { render :show, status: :ok, location: @piano_study }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @piano_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piano_studies/1 or /piano_studies/1.json
  def destroy
    @piano_study.destroy
    respond_to do |format|
      format.html { redirect_to piano_studies_url, notice: "Piano study was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piano_study
      @piano_study = PianoStudy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def piano_study_params
      params.fetch(:piano_study, {})
    end
end
