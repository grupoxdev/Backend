class UsersController < ApplicationController
  
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
    render json: @users, include: []
  end

  def show
    if @user.errors.any?
      render json: @user.errors.messages
    else
      render json: @user, include: []
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, include: []
    else
      render json: @user.errors
    end
  end

  def update
    if @user.update(user_params)
      render json: @user, include: []
    else
      render json: @user.errors
    end
  end

  def destroy
    if @user.destroy
      render json: @user, include: []
    else
      render json: @user.errors
    end  
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:nombre, :primerApellido, :segundoApellido, :correo, :password, :documento, :fechaNacimiento, :departamento, :ciudad, :telefono, :estadoCivil, :rh)
    end
  
    def set_user
      @user = User.find(params[:id])
    end  
end