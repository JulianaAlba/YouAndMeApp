class DefeitoparceirosController < ApplicationController
  before_action :set_defeitoparceiro, only: [:show, :edit, :update, :destroy]

  # GET /defeitoparceiros
  # GET /defeitoparceiros.json
  def index
    @defeitoparceiros = Defeitoparceiro.all
  end

  # GET /defeitoparceiros/1
  # GET /defeitoparceiros/1.json
  def show
  end

  # GET /defeitoparceiros/new
  def new
    @defeitoparceiro = Defeitoparceiro.new
  end

  # GET /defeitoparceiros/1/edit
  def edit
  end

  # POST /defeitoparceiros
  # POST /defeitoparceiros.json
  def create
    @defeitoparceiro = Defeitoparceiro.new(defeitoparceiro_params)

    respond_to do |format|
      if @defeitoparceiro.save
        format.html { redirect_to @defeitoparceiro, notice: 'Defeitoparceiro was successfully created.' }
        format.json { render :show, status: :created, location: @defeitoparceiro }
      else
        format.html { render :new }
        format.json { render json: @defeitoparceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defeitoparceiros/1
  # PATCH/PUT /defeitoparceiros/1.json
  def update
    respond_to do |format|
      if @defeitoparceiro.update(defeitoparceiro_params)
        format.html { redirect_to @defeitoparceiro, notice: 'Defeitoparceiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @defeitoparceiro }
      else
        format.html { render :edit }
        format.json { render json: @defeitoparceiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defeitoparceiros/1
  # DELETE /defeitoparceiros/1.json
  def destroy
    @defeitoparceiro.destroy
    respond_to do |format|
      format.html { redirect_to defeitoparceiros_url, notice: 'Defeitoparceiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defeitoparceiro
      @defeitoparceiro = Defeitoparceiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defeitoparceiro_params
      params.require(:defeitoparceiro).permit(:Nomedefeitop)
    end
end
