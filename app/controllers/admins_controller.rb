class AdminsController < ApplicationController

    before_action :set_admin, only: [:show, :update, :destroy]
    
    def index
        @admins = Admin.all
        render json: @admins, include: []
    end

    def show
        if @admin.errors.any?
            render json: @admin.errors.messages
        else
            render json: @admin, include: []
        end
    end

    def create
        @admin = Admin.new(admin_params)
        if @admin.save
            render json: @admin, include: []
        else
            render json: @admin.errors
        end
    end

    def update
        if @admin.update(admin_params)
            render json: @admin, include: []
        else
            render json: @admin.errors
        end
    end

    def destroy
        if @admin.destroy
            render json: @admin, include: []
        else
            render json: @admin.errors
        end  
        redirect_to admins_path
    end

    private
        def admin_params
            params.require(:admin).permit(:nombre, :primerApellido, :segundoApellido, :correo, :password, :tipoDocumento, :documento)
        end
    
        def set_admin
            @admin = Admin.find(params[:id])
        end 
end
