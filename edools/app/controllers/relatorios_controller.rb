class RelatoriosController < ApplicationController

  def index
    @escolas = Escola.all
    @relatorio = Relatorio.new
  end

  def show
  end

  def create
  end

  private
    def relatorio_params
      params.permit(:escola_id)
    end
end