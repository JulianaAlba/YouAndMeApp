class DefeitosController < ApplicationController
  before_action :set_defeito, only: [:show, :edit, :update, :destroy]

  # GET /defeitos
  # GET /defeitos.json
  def index
    @defeitos = Defeito.all
  end

  # GET /defeitos/1
  # GET /defeitos/1.json
  def show
  end

  # GET /defeitos/new
  def new
    @defeito = Defeito.new
  end

  # GET /defeitos/1/edit
  def edit
  end

  # POST /defeitos
  # POST /defeitos.json
  def create
    @defeito = Defeito.new(defeito_params)

    respond_to do |format|
      if @defeito.save
        format.html { redirect_to @defeito, notice: 'Defeito was successfully created.' }
        format.json { render :show, status: :created, location: @defeito }
      else
        format.html { render :new }
        format.json { render json: @defeito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defeitos/1
  # PATCH/PUT /defeitos/1.json
  def update
    respond_to do |format|
      if @defeito.update(defeito_params)
        format.html { redirect_to @defeito, notice: 'Defeito was successfully updated.' }
        format.json { render :show, status: :ok, location: @defeito }
      else
        format.html { render :edit }
        format.json { render json: @defeito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defeitos/1
  # DELETE /defeitos/1.json
  def destroy
    @defeito.destroy
    respond_to do |format|
      format.html { redirect_to defeitos_url, notice: 'Defeito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defeito
      @defeito = Defeito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defeito_params
      params.require(:defeito).permit(:Nomedefeito)
    end
end
