class UserAppointmentsController < ApplicationController
    before_action :set_userApponitment, only: [:show, :update, :destroy]
    
    def index
        @userApponitments = UserApponitment.all
        render json: @userApponitments, include: []
    end

    def show
        if @userApponitment.errors.any?
            render json: @userApponitment.errors.messages
        else
            render json: @userApponitment, include: []
        end
    end

    def create
        @userApponitment = UserApponitment.new(userApponitment_params)
        if @userApponitment.save
            render json: @userApponitment, include: []
        else
            render json: @userApponitment.errors
        end
    end

    def update
        if @userApponitment.update(userApponitment_params)
            render json: @userApponitment, include: []
        else
            render json: @userApponitment.errors
        end
    end

    def destroy
        if @userApponitment.destroy
            render json: @userApponitment, include: []
        else
            render json: @userApponitment.errors
        end
    end

    private
        def userApponitment_params
            params.require(:userApponitment).permit(:user_id, :appointment_id)
        end
    
        def set_userApponitment
            @userApponitment = UserApponitment.find(params[:id])
        end
end
