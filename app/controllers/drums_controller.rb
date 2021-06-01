class DrumsController < ApplicationController
  before_action :set_drum, only: %i[ show edit update destroy ]

  # GET /drums or /drums.json
  def index
    @drums = Drum.all
  end

  # GET /drums/1 or /drums/1.json
  def show
  end

  # GET /drums/new
  def new
    @drum = Drum.new
  end

  # GET /drums/1/edit
  def edit
  end

  # POST /drums or /drums.json
  def create
    @drum = Drum.new(drum_params)

    respond_to do |format|
      if @drum.save
        format.html { redirect_to @drum, notice: "Drum was successfully created." }
        format.json { render :show, status: :created, location: @drum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @drum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drums/1 or /drums/1.json
  def update
    respond_to do |format|
      if @drum.update(drum_params)
        format.html { redirect_to @drum, notice: "Drum was successfully updated." }
        format.json { render :show, status: :ok, location: @drum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @drum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drums/1 or /drums/1.json
  def destroy
    @drum.destroy
    respond_to do |format|
      format.html { redirect_to drums_url, notice: "Drum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drum
      @drum = Drum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drum_params
      params.fetch(:drum, {})
    end
end
