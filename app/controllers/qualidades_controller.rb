class QualidadesController < ApplicationController
  before_action :set_qualidade, only: [:show, :edit, :update, :destroy]

  # GET /qualidades
  # GET /qualidades.json
  def index
    @qualidades = Qualidade.all
  end

  # GET /qualidades/1
  # GET /qualidades/1.json
  def show
  end

  # GET /qualidades/new
  def new
    @qualidade = Qualidade.new
  end

  # GET /qualidades/1/edit
  def edit
  end

  # POST /qualidades
  # POST /qualidades.json
  def create
    @qualidade = Qualidade.new(qualidade_params)

    respond_to do |format|
      if @qualidade.save
        format.html { redirect_to @qualidade, notice: 'Qualidade was successfully created.' }
        format.json { render :show, status: :created, location: @qualidade }
      else
        format.html { render :new }
        format.json { render json: @qualidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualidades/1
  # PATCH/PUT /qualidades/1.json
  def update
    respond_to do |format|
      if @qualidade.update(qualidade_params)
        format.html { redirect_to @qualidade, notice: 'Qualidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualidade }
      else
        format.html { render :edit }
        format.json { render json: @qualidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualidades/1
  # DELETE /qualidades/1.json
  def destroy
    @qualidade.destroy
    respond_to do |format|
      format.html { redirect_to qualidades_url, notice: 'Qualidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualidade
      @qualidade = Qualidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualidade_params
      params.require(:qualidade).permit(:Nomequalidade)
    end
end
