class PaneladminController < ApplicationController
	before_action :set_vacante, only: [:show, :destroy]
	before_action :authenticate_administrator!
	def index
		@vacantes = Vacante.all
	end
	def show
		
	end
  def destroy
    @vacante.destroy
    respond_to do |format|
      format.html { redirect_to paneladmin_index_path, notice: 'La Vacante a sido eliminada' }
      format.json { head :no_content }
    end
  end
  private
  def set_vacante
  	@vacante = Vacante.find(params[:id])
  end
end
