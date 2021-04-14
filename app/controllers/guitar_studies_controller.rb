class GuitarStudiesController < ApplicationController
  before_action :set_guitar_study, only: %i[ show edit update destroy ]

  # GET /guitar_studies or /guitar_studies.json
  def index
    @guitar_studies = GuitarStudy.all
  end

  # GET /guitar_studies/1 or /guitar_studies/1.json
  def show
    study = GuitarStudy.where("id = ?", params[:id]).select("formula").first
    @formula = IntervallicFormula.where("id = ?", study.formula).first
  end

  # GET /guitar_studies/new
  def new
    @formulas = IntervallicFormula.all
    @guitar_study = GuitarStudy.new
  end

  # GET /guitar_studies/1/edit
  def edit
  end

  # POST /guitar_studies or /guitar_studies.json
  def create
    @guitar_study = GuitarStudy.new(guitar_study_params)

    respond_to do |format|
      if @guitar_study.save
        format.html { redirect_to @guitar_study, notice: "Guitar study was successfully created." }
        format.json { render :show, status: :created, location: @guitar_study }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guitar_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guitar_studies/1 or /guitar_studies/1.json
  def update
    respond_to do |format|
      if @guitar_study.update(guitar_study_params)
        format.html { redirect_to @guitar_study, notice: "Guitar study was successfully updated." }
        format.json { render :show, status: :ok, location: @guitar_study }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guitar_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guitar_studies/1 or /guitar_studies/1.json
  def destroy
    @guitar_study.destroy
    respond_to do |format|
      format.html { redirect_to guitar_studies_url, notice: "Guitar study was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guitar_study
      @guitar_study = GuitarStudy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guitar_study_params
      params.fetch(:guitar_study, {}).permit(:focus, :formula, :key)
    end
end
