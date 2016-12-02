class InicioController < ApplicationController
  before_action :authenticate_student!, only:[:vacante]
  def home
  end

  def vacante
  	@vacante = Vacante.all
  end
end
