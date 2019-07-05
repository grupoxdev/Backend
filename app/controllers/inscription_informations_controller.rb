class InformationsController < ApplicationController
  before_action :set_inscriptions, only: [:create, :show, :update, :index]
  
  # */users
  def index
    @inscriptions = InscriptionInformation.all
    render json: @inscriptions, include: []
  end

  # */users/:id
  def show
    if @inscriptions.errors.any?
      render json: @inscriptions.errors.messages
    else
      render json: @inscriptions, include: []
    end
  end

  def create
    @inscriptions = User.new(inscription_params)
    if @inscriptions.save
      render json: @inscriptions, status: :created, location: @inscriptions
    else
      render json: @inscriptions.errors, status: :unprocessable_entity
    end
  end

  def update
    inscription = InscriptionInformation.find(params[:id])
    if inscription.update_attributes(inscription_params)
      render json: {status: 'SUCCESS', message: 'Actualizado', data: inscription}, status: :ok
    else
      render json: {status: 'ERROR', message: 'No Actualizado', data: inscription.errors}, status: :unprocessable_entity
    
    end
  end

  def destroy
    if @inscriptions.destroy
      render json: @inscriptions, include: []
    else
      render json: @inscriptions.errors
    end  
    redirect_to incriptions_path
  end

  def current
    render json: current_inscription, status:200
  end

  private
    def inscription_params
      params.permit(
        :esta_trabajando,
        :nombre_trabajo,
        :empresa_trabajo,        
        :cargo_trabajo,          
        :tipo_trabajador,    
        :fecha_ingreso_trabajo,
        :direccion_trabajo,      
        :pais_trabajo,  
        :departamento_trabajo,   
        :municipio_trabajo,
        :telefono_trabajo     
      )
    end

    def set_inscriptions
      @inscriptions = InscriptionInformation.find(params[:id])
    end  
end
