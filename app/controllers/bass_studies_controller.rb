class BassStudiesController < ApplicationController
  before_action :set_bass_study, only: %i[ show edit update destroy ]

  # GET /bass_studies or /bass_studies.json
  def index
    @bass_studies = BassStudy.all
  end

  # GET /bass_studies/1 or /bass_studies/1.json
  def show
  end

  # GET /bass_studies/new
  def new
    @bass_study = BassStudy.new
  end

  # GET /bass_studies/1/edit
  def edit
  end

  # POST /bass_studies or /bass_studies.json
  def create
    @bass_study = BassStudy.new(bass_study_params)

    respond_to do |format|
      if @bass_study.save
        format.html { redirect_to @bass_study, notice: "Bass study was successfully created." }
        format.json { render :show, status: :created, location: @bass_study }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bass_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bass_studies/1 or /bass_studies/1.json
  def update
    respond_to do |format|
      if @bass_study.update(bass_study_params)
        format.html { redirect_to @bass_study, notice: "Bass study was successfully updated." }
        format.json { render :show, status: :ok, location: @bass_study }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bass_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bass_studies/1 or /bass_studies/1.json
  def destroy
    @bass_study.destroy
    respond_to do |format|
      format.html { redirect_to bass_studies_url, notice: "Bass study was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bass_study
      @bass_study = BassStudy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bass_study_params
      params.fetch(:bass_study, {})
    end
end
