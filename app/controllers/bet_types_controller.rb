class BetTypesController < ApplicationController
  before_action :set_bet_type, only: [:show, :edit, :update, :destroy]

  # GET /bet_types
  # GET /bet_types.json
  def index
    @bet_types = BetType.all
  end

  # GET /bet_types/1
  # GET /bet_types/1.json
  def show
  end

  # GET /bet_types/new
  def new
    @bet_type = BetType.new
  end

  # GET /bet_types/1/edit
  def edit
  end

  # POST /bet_types
  # POST /bet_types.json
  def create
    @bet_type = BetType.new(bet_type_params)

    respond_to do |format|
      if @bet_type.save
        format.html { redirect_to @bet_type, notice: 'Bet type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bet_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @bet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bet_types/1
  # PATCH/PUT /bet_types/1.json
  def update
    respond_to do |format|
      if @bet_type.update(bet_type_params)
        format.html { redirect_to @bet_type, notice: 'Bet type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bet_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bet_types/1
  # DELETE /bet_types/1.json
  def destroy
    @bet_type.destroy
    respond_to do |format|
      format.html { redirect_to bet_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet_type
      @bet_type = BetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_type_params
      params.require(:bet_type).permit(:name)
    end
end
