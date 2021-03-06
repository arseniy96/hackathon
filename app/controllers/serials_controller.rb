class SerialsController < ApplicationController
  before_action :set_serial, only: [:show, :update, :destroy]
  before_filter :authenticate_user!, only: [:index] 

  # GET /serials
  # GET /serials.json
  def index
    @serials = Serial.all

    render json: @serials
  end

  # GET /serials/1
  # GET /serials/1.json
  def show
    render json: @serial
  end

  # POST /serials
  # POST /serials.json
  def create
    @user = curent_user
    @serial = Serial.find(params[:id])
    @user.serials << @serial
    if @serial.save
      render json: @serial, status: :created, location: @serial
    else
      render json: @serial.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /serials/1
  # PATCH/PUT /serials/1.json
  def update
    @serial = Serial.find(params[:id])

    if @serial.update(serial_params)
      render json: @serial
    else
      render json: @serial.errors, status: :unprocessable_entity
    end
  end

  # DELETE /serials/1
  # DELETE /serials/1.json
  def destroy_serial
    @serial = Serial.find(params[:id])
    @user = current_user
    @user.serials.delete(@serial)

    render json: @serial
  end

  def user_serials
    @serials = Serial.where(user_id: current_user.id)
    render json: @serials
  end

  # def all
  #   @allserials = Availableserial.all
  #   render json: @allserials
  # end
  #
  # def all_serials_id
  #   @serial = Availableserial.find(params[:id])
  #   render json: @serial
  # end

  private

    def set_serial
      @serial = Serial.find(params[:id])
    end

    def serial_params
      params.permit(:name, :description)
    end
end
