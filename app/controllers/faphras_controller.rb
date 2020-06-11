class FaphrasController < ApplicationController
  before_action :set_faphra, only: [:show, :edit, :update, :destroy]

  # GET /faphras
  # GET /faphras.json
  def index
    @faphras = Faphra.all.order("created_at DESC")
    @faphra = Faphra.new
  end

  # GET /faphras/1
  # GET /faphras/1.json
  def show
  end

  # GET /faphras/new
  def new
    @faphra = Faphra.new
  end

  # GET /faphras/1/edit
  def edit
  end

  # POST /faphras
  # POST /faphras.json
  def create
    @faphra = Faphra.new(faphra_params)

    respond_to do |format|
      if @faphra.save
        format.html { redirect_to root_path, notice: 'Faphra was successfully created.' }
        format.json { render :show, status: :created, location: @faphra }
      else
        format.html { render :new }
        format.json { render json: @faphra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faphras/1
  # PATCH/PUT /faphras/1.json
  def update
    respond_to do |format|
      if @faphra.update(faphra_params)
        format.html { redirect_to @faphra, notice: 'Faphra was successfully updated.' }
        format.json { render :show, status: :ok, location: @faphra }
      else
        format.html { render :edit }
        format.json { render json: @faphra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faphras/1
  # DELETE /faphras/1.json
  def destroy
    @faphra.destroy
    respond_to do |format|
      format.html { redirect_to faphras_url, notice: 'Faphra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faphra
      @faphra = Faphra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faphra_params
      params.require(:faphra).permit(:body)
    end
end
