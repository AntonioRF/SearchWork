class VacantesController < ApplicationController
  before_action :set_vacante, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_company!

  # GET /vacantes
  # GET /vacantes.json
  def index
    @vacantes = current_company.vacantes
  end

  # GET /vacantes/1
  # GET /vacantes/1.json
  def show

  end

  # GET /vacantes/new
  def new
    @vacante = Vacante.new
  end

  # GET /vacantes/1/edit
  def edit
  end

  # POST /vacantes
  # POST /vacantes.json
  def create
    @vacante = current_company.vacantes.new(vacante_params)

    respond_to do |format|
      if @vacante.save
        format.html { redirect_to @vacante, notice: 'Vacante was successfully created.' }
        format.json { render :show, status: :created, location: @vacante }
      else
        format.html { render :new }
        format.json { render json: @vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacantes/1
  # PATCH/PUT /vacantes/1.json
  def update
    respond_to do |format|
      if @vacante.update(vacante_params)
        format.html { redirect_to @vacante, notice: 'Vacante was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacante }
      else
        format.html { render :edit }
        format.json { render json: @vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacantes/1
  # DELETE /vacantes/1.json
  def destroy
    @vacante.destroy
    respond_to do |format|
      format.html { redirect_to vacantes_url, notice: 'Vacante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacante
      @vacante = Vacante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacante_params
      params.require(:vacante).permit(:title, :address, :salary, :description, :requirements, :benefits, :schedule, :category)
    end
end
