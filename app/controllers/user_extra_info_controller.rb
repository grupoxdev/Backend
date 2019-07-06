class UserExtraController < ApplicationController
            def index
                extra = UserExtraInfo.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Extra info Loaded', data: extra}, status: :ok
            end

            def show
                extra = UserExtraInfo.find(params[:id])
                render json: {status: 'SUCCESS', message:'Loaded Extra Info', data: extra}, status: :ok
            end
            
            def create
                extra =  UserExtraInfo.new(extra_params)
                
                if extra.save
                    render json: {status: 'SUCCESS', message:'Saved Extra Info', data: extra}, status: :ok
                else
                    render json: {status: 'ERROR', message:'Extra Info Not Saved', data: extra.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                extra = UserExtraInfo.find(params[:id])
                extra.destroy

                render json: {status: 'SUCCESS', message:'Deleted Extra Info', data: extra}, status: :ok
            end

            def update
                extra = UserExtraInfo.find(params[:id])
                if extra.update_attributes(extra_params)
                    render json: {status: 'SUCCESS', message:'Updated Extra Info', data: extra}, status: :ok
                else
                    render json: {status: 'ERROR', message:'Update Not Saved', data: extra.errors}, status: :unprocessable_entity
                end
            end


            private

            def extra_params
                :params.permit(
                :fecha_exp,
                :pais_exp,            
                :dpto_exp,            
                :ciudad_exp,          
                :genero,               
                :nacionalidad,        
                :doble_nacionalidad,             
                :retornado_de_exterior,
                :excepciones_de_ley,   
                :dependencia_economica,
                :pais_residencia,     
                :dpto_residencia,     
                :municipio_residencia,
                :telefono_movil,      
                :tipo_vivienda,        
                :estrato_vivienda,     
                :pertenece_red_unidos, 
                :sisben,               
                :esta_cargo_icbf,      
                :estatura,             
                :peso,                  
                :grupo_sanguineo,      
                :factor_rh,            
                :num_hijos,            
                :estado_civil,
                :user_id 
                    )
            end
end