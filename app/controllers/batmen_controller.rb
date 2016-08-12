class BatmenController < ApplicationController
  before_action :set_batman, only: [:show, :edit, :update, :destroy]

  # GET /batmen
  # GET /batmen.json
  def index
    @batmen = Batman.all
  end

  # GET /batmen/1
  # GET /batmen/1.json
  def show
  end

  # GET /batmen/new
  def new
    @batman = Batman.new
  end

  # GET /batmen/1/edit
  def edit
  end

  # POST /batmen
  # POST /batmen.json
  def create
    @batman = Batman.new(batman_params)

    respond_to do |format|
      if @batman.save
        format.html { redirect_to @batman, notice: 'Batman was successfully created.' }
        format.json { render :show, status: :created, location: @batman }
      else
        format.html { render :new }
        format.json { render json: @batman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batmen/1
  # PATCH/PUT /batmen/1.json
  def update
    respond_to do |format|
      if @batman.update(batman_params)
        format.html { redirect_to @batman, notice: 'Batman was successfully updated.' }
        format.json { render :show, status: :ok, location: @batman }
      else
        format.html { render :edit }
        format.json { render json: @batman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batmen/1
  # DELETE /batmen/1.json
  def destroy
    @batman.destroy
    respond_to do |format|
      format.html { redirect_to batmen_url, notice: 'Batman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batman
      @batman = Batman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batman_params
      params.require(:batman).permit(:name, :backstory, :allies, :enemies, :nemesis)
    end
end
