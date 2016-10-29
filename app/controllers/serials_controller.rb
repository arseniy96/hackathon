class SerialsController < ApplicationController
  before_action :set_serial, only: [:show, :update, :destroy]

  # GET /serials
  # GET /serials.json
  def index
    @serials = Serial.where(user_id: 1)

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
    @serial = Serial.new(serial_params)

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
  def destroy
    @serial.destroy

    @serials = Serial.all

    render json: @serials
  end

  private

    def set_serial
      @serial = Serial.find(params[:id])
    end

    def serial_params
      params.permit(:name => [])
    end
end
