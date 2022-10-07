class Api::ComidasController < ApplicationController
  def index
    @comida = Comida.all
    render json: @comida
  end

  def show
    @comida = Cmida.find(params[:id])
    render json: @comida
  end

  def create
    @comida = Comida.new(comida_params)
    if @comida.save
      render json: @comida
    else
      render json: {errors: @comida.errors},status: :unprocessable_entity
  end

  def update
  end

  def destroy
  end


  private
  def comida_params 
    #{comida: {type: "Açai, qtd: 777"}}
    params.require(:comida).permit(:type,:qtd)
  end
end