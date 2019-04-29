class DistrictsController < ApplicationController

    before_action :set_district, only: [:show, :update, :destroy]
    
    def index
        @districts = District.all
        render json: @districts, include: []
    end

    def show
        if @district.errors.any?
            render json: @district.errors.messages
        else
            render json: @district, include: []
        end
    end

    def create
        @district = District.new(district_params)
        if @district.save
            render json: @district, include: []
        else
            render json: @district.errors
        end
    end

    def update
        if @district.update(district_params)
            render json: @district, include: []
        else
            render json: @district.errors
        end
    end

    def destroy
        if @district.destroy
            render json: @district, include: []
        else
            render json: @district.errors
        end  
        redirect_to districts_path
    end

    private
        def district_params
            params.require(:district).permit(:nombre, :direccion, :departamento, :ciudad, :telefono)
        end
    
        def set_district
            @district = District.find(params[:id])
        end 
end
