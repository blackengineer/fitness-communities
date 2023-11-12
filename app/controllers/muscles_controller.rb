class MusclesController < ApplicationController
  before_action :set_muscle, only: %i[ show edit update destroy ]

  # GET /muscles or /muscles.json
  def index
    @muscles = Muscle.all
  end

  # GET /muscles/1 or /muscles/1.json
  def show
  end

  # GET /muscles/new
  def new
    @muscle = Muscle.new
    authorize @muscle
  end

  # GET /muscles/1/edit
  def edit
    authorize @muscle
  end

  # POST /muscles or /muscles.json
  def create
    @muscle = Muscle.new(muscle_params)
    authorize @muscle
    @muscle.user = current_user

    respond_to do |format|
      if @muscle.save
        format.html { redirect_to muscle_url(@muscle), notice: "Muscle was successfully created." }
        format.json { render :show, status: :created, location: @muscle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @muscle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muscles/1 or /muscles/1.json
  def update
    authorize @muscle
    respond_to do |format|
      if @muscle.update(muscle_params)
        format.html { redirect_to muscle_url(@muscle), notice: "Muscle was successfully updated." }
        format.json { render :show, status: :ok, location: @muscle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @muscle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muscles/1 or /muscles/1.json
  def destroy
    authorize @muscle
    @muscle.destroy!

    respond_to do |format|
      format.html { redirect_to muscles_url, notice: "Muscle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muscle
      @muscle = Muscle.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def muscle_params
      params.require(:muscle).permit(:name, :origin, :insertion, :concentric, :eccentric, :isometric, :innervation, :blood_supply, :avatar)
    end
end
