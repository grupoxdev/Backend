class InscriptionInformationController < ApplicationController
      
      def index
          information = InscriptionInformation.order('created_at DESC');
          render json: {status: 'SUCCESS', message:'Info Loaded', data: information}, status: :ok
      end

      def show
          information = InscriptionInformation.find(params[:id])
          render json: {status: 'SUCCESS', message:'Loaded Info', data: information}, status: :ok
      end
      
      def create
          information =  InscriptionInformation.new(information_params)
          
          if extra.save
              render json: {status: 'SUCCESS', message:'Saved Info', data: information}, status: :ok
          else
              render json: {status: 'ERROR', message:'Info Not Saved', data: information.errors}, status: :unprocessable_entity
          end
      end

      def destroy
          information = InscriptionInformation.find(params[:id])
          information.destroy

          render json: {status: 'SUCCESS', message:'Deleted Info', data: information}, status: :ok
      end

      def update
          information = InscriptionInformation.find(params[:id])
          if information.update_attributes(information_params)
              render json: {status: 'SUCCESS', message:'Updated Information', data: information}, status: :ok
          else
              render json: {status: 'ERROR', message:'Update Not Saved', data: information.errors}, status: :unprocessable_entity
          end
      end

      private

      def information_params
          :params.permit(
            :cursa_educacion_basica,
            :nivel_educacion_basica,
            :institucion_educacion_basica,
            :terminacion_educacion_basica,
            :cursa_educacion_superior,
            :nombre_carrera,
            :semestre_educacion_superior,
            :institucion_educacion_superior,
            :terminacion_educacion_superior,
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
            :telefono_trabajo,
            :user_id 
              )
      end
end