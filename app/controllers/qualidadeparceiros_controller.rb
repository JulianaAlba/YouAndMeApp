class QualidadeparceirosController < ApplicationController
  before_action :set_qualidadeparceiro, only: [:show, :edit, :update, :destroy]

  # GET /qualidadeparceiros
  # GET /qualidadeparceiros.json
  def index
    @qualidadeparceiros = Qualidadeparceiro.all
  end

  # GET /qualidadeparceiros/1
  # GET /qualidadeparceiros/1.json
  def show
  end

  # GET /qualidadeparceiros/new
  def new
    @qualidadeparceiro = Qualidadeparceiro.new
  end

  # GET /qualidadeparceiros/1/edit
  def edit
  end

  # POST /qualidadeparceiros
  # POST /qualidadeparceiros.json
  def create
    @qualidadeparceiro = Qualidadeparceiro.new(qualidadeparceiro_params)

    respond_to do |format|
      if @qualidadeparceiro.save
        format.html { redirect_to @qualidadeparceiro, notice: 'Qualidadeparceiro was successfully created.' }
        format.json { render :show, status: :created, location: @qualidadeparceiro }
      else
        format.html { render :new }
        format.json { render json: @qualidadeparceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualidadeparceiros/1
  # PATCH/PUT /qualidadeparceiros/1.json
  def update
    respond_to do |format|
      if @qualidadeparceiro.update(qualidadeparceiro_params)
        format.html { redirect_to @qualidadeparceiro, notice: 'Qualidadeparceiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualidadeparceiro }
      else
        format.html { render :edit }
        format.json { render json: @qualidadeparceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualidadeparceiros/1
  # DELETE /qualidadeparceiros/1.json
  def destroy
    @qualidadeparceiro.destroy
    respond_to do |format|
      format.html { redirect_to qualidadeparceiros_url, notice: 'Qualidadeparceiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualidadeparceiro
      @qualidadeparceiro = Qualidadeparceiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualidadeparceiro_params
      params.require(:qualidadeparceiro).permit(:Nomequalidadep)
    end
end
