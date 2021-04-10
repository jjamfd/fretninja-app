class IntervallicFormulasController < ApplicationController
  before_action :set_intervallic_formula, only: %i[ show edit update destroy ]

  # GET /intervallic_formulas or /intervallic_formulas.json
  def index
    @intervallic_formulas = IntervallicFormula.all
  end

  # GET /intervallic_formulas/1 or /intervallic_formulas/1.json
  def show
  end

  # GET /intervallic_formulas/new
  def new
    @intervallic_formula = IntervallicFormula.new
  end

  # GET /intervallic_formulas/1/edit
  def edit
  end

  # POST /intervallic_formulas or /intervallic_formulas.json
  def create
    @intervallic_formula = IntervallicFormula.new(intervallic_formula_params)

    respond_to do |format|
      if @intervallic_formula.save
        format.html { redirect_to @intervallic_formula, notice: "Intervallic formula was successfully created." }
        format.json { render :show, status: :created, location: @intervallic_formula }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intervallic_formula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intervallic_formulas/1 or /intervallic_formulas/1.json
  def update
    respond_to do |format|
      if @intervallic_formula.update(intervallic_formula_params)
        format.html { redirect_to @intervallic_formula, notice: "Intervallic formula was successfully updated." }
        format.json { render :show, status: :ok, location: @intervallic_formula }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intervallic_formula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intervallic_formulas/1 or /intervallic_formulas/1.json
  def destroy
    @intervallic_formula.destroy
    respond_to do |format|
      format.html { redirect_to intervallic_formulas_url, notice: "Intervallic formula was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervallic_formula
      @intervallic_formula = IntervallicFormula.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intervallic_formula_params
      params.fetch(:intervallic_formula, {}).permit(:name, :formula)
    end
end
