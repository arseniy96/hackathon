class SpoilersController < ApplicationController
  before_action :set_spoiler, only: [:show, :update, :destroy]

  # GET /spoilers
  # GET /spoilers.json
  def index
    @spoilers = Spoiler.all

    render json: @spoilers
  end

  # GET /spoilers/1
  # GET /spoilers/1.json
  def show
    render json: @spoiler
  end

  # POST /spoilers
  # POST /spoilers.json
  def create
    @serial = Serial.find(params[:serial_id])
    @spoiler = @serial.spoilers.new(spoiler_params)

    if @spoiler.save
      render json: @spoiler, status: :created, location: @spoiler
    else
      render json: @spoiler.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spoilers/1
  # PATCH/PUT /spoilers/1.json
  def update
    @spoiler = Spoiler.find(params[:id])

    if @spoiler.update(spoiler_params)
      head :no_content
    else
      render json: @spoiler.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spoilers/1
  # DELETE /spoilers/1.json
  def destroy
    @spoiler.destroy

    head :no_content
  end

  private

    def set_spoiler
      @spoiler = Spoiler.find(params[:id])
    end

    def spoiler_params
      params.permit(:text, :is_sended, :serial_id)
    end
end
