class FaciliysController < ApplicationController
  before_action :set_faciliy, only: [:show, :edit, :update, :destroy]

  # GET /faciliys
  # GET /faciliys.json
  def index
    @faciliys = Faciliy.all
  end

  # GET /faciliys/1
  # GET /faciliys/1.json
  def show
  end

  # GET /faciliys/new
  def new
    @faciliy = Faciliy.new
  end

  # GET /faciliys/1/edit
  def edit
  end

  # POST /faciliys
  # POST /faciliys.json
  def create
    @faciliy = Faciliy.new(faciliy_params)

    respond_to do |format|
      if @faciliy.save
        format.html { redirect_to @faciliy, notice: 'Faciliy was successfully created.' }
        format.json { render :show, status: :created, location: @faciliy }
      else
        format.html { render :new }
        format.json { render json: @faciliy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faciliys/1
  # PATCH/PUT /faciliys/1.json
  def update
    respond_to do |format|
      if @faciliy.update(faciliy_params)
        format.html { redirect_to @faciliy, notice: 'Faciliy was successfully updated.' }
        format.json { render :show, status: :ok, location: @faciliy }
      else
        format.html { render :edit }
        format.json { render json: @faciliy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faciliys/1
  # DELETE /faciliys/1.json
  def destroy
    @faciliy.destroy
    respond_to do |format|
      format.html { redirect_to faciliys_url, notice: 'Faciliy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faciliy
      @faciliy = Faciliy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faciliy_params
      params.require(:faciliy).permit(:name)
    end
end
