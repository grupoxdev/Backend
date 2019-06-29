class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create, :show, :index]
  before_action :set_user, only: [:show, :update, :destroy]
  
  # */users
  def index
    @users = User.all
    render json: @users, include: []
  end

  # */users/:id
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
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
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

  def current
    render json: current_user, status:200
  end

  private
    def user_params
      params.require(:user).permit(:nombre, :primerApellido, 
      :segundoApellido, :avatar, :email, 
      :password, :documento, 
      :fechaNacimiento, :departamento, 
      :ciudad, :telefono, 
      :estadoCivil, :rh, 
      :tipoUsuario, :tipoDocumento, :district_id)
    end
    def user_params2
      params.require(:user).permit(:nombre, :primerApellido, 
      :segundoApellido, :avatar, :email, 
      :password, :documento, 
      :fechaNacimiento, :departamento, 
      :ciudad, :telefono, 
      :estadoCivil, :rh, 
      :tipoUsuario, :tipoDocumento, :district_id)
    end
  
    def set_user
      @user = User.find(params[:id])
    end  
end
