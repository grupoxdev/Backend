class AppointmentsController < ApplicationController

    before_action :set_appointment, only: [:show, :update, :destroy]
    
    def index
        @appointments = Appointment.all
        render json: @appointments, include: []
    end

    def show
        if @appointment.errors.any?
            render json: @appointment.errors.messages
        else
            render json: @appointment, include: []
        end
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            render json: @appointment, include: []
        else
            render json: @appointment.errors
        end
    end

    def update
        if @appointment.update(appointment_params)
            render json: @appointment, include: []
        else
            render json: @appointment.errors
        end
    end

    def destroy
        if @appointment.destroy
            render json: @appointment, include: []
        else
            render json: @appointment.errors
        end
    end

    private
        def appointment_params
            params.require(:appointment).permit(:fecha, :nombre)
        end
    
        def set_appointment
            @appointment = Appointment.find(params[:id])
        end 
end
