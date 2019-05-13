class DocumentsController < ApplicationController
    
    before_action :set_document, only: [:show, :update, :destroy]
    
    def index
        @documents = Document.all
        render json: @documents, include: []
    end

    def show
        if @document.errors.any?
            render json: @document.errors.messages
        else
            render json: @document, include: []
        end
    end

    def create
        @document = Document.new(document_params)
        if @document.save
            render json: @document, include: []
        else
            render json: @document.errors
        end
    end

    def update
        if @document.update(document_params)
            render json: @document, include: []
        else
            render json: @document.errors
        end
    end

    def destroy
        if @document.destroy
            render json: @document, include: []
        else
            render json: @document.errors
        end
    end

    private
        def document_params
            params.require(:document).permit(:nombre, :archivo)
        end
    
        def set_document
            @document = Document.find(params[:id])
        end 
end
