class InicioController < ApplicationController
  def home
  end

  def vacante
  	@vacante = Vacante.all
  end
end
