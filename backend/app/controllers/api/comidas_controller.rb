class Api::ComidasController < ApplicationController
  before_action :set_comida,only: [:update,:show,:destroy]

  def index
    @comida = Comida.all
    render json: @comida
  end

  def show

    render json: @comida
  end

  def create
    @comida = Comida.new(comida_params)
    if @comida.save
      render json: @comida
    else
      render json: {errors: @comida.errors},status: :unprocessable_entity
    end
  end

  def update

    if @comida.update(comida_params)
      render json: @Comida
    else
      render json: {errors: @comida.errors},status: :unprocessable_entity
    end
  end

  def destroy

    @comida.destroy
    render json: {message: "Comida destruida com sucesso"}

  end


  private
    def comida_params 
      #{comida: {type: "Açai, qtd: 777"}}
      params.require(:comida).permit(:typeC,:qtd,:img_url)
    end


    def set_comida
      @comida = Comida.find(params[:id])
    end
end
