class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]

  # GET /rents
  # GET /rents.json
  def index
    @rnt = Rent.new
    @rents = Rent.all
  end
  

  # GET /rents/1
  # GET /rents/1.json
  def show
  end

  # GET /rents/new
  def new
    @rent = Rent.new
  end

  # GET /rents/1/edit
  def edit
  end

  # POST /rents
  # POST /rents.json
  def create
    @rent = Rent.new(rent_params)
    @rentpar = rent_params
    respond_to do |format|
      if @rent.save
        format.html { redirect_to @rent, notice: 'Rent was successfully created.' }
        format.json { render :show, status: :created, location: @rent }
      else
        format.html { render :new }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rents/1
  # PATCH/PUT /rents/1.json
  def update
    respond_to do |format|
      if @rent.update(rent_params)
        format.html { redirect_to @rent, notice: 'Rent was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent }
      else
        format.html { render :edit }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rents/1
  # DELETE /rents/1.json
  def destroy
    @rent.destroy
    respond_to do |format|
      format.html { redirect_to rents_url, notice: 'Rent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def query
  
    puts params
    
    @rents = Rent.all
    rnt = params[:rnt]
    if rnt[:location_id]!= ""
      puts '--------------------------------'
      @rents = @rents.where(location_id: rnt[:location_id])
    end
    strbath = "bathrooms >= "+ rnt[:bathrooms]
    @rents = @rents.where(strbath)
    stroom = "rooms >= "+ rnt[:rooms]
    @rents = @rents.where(stroom)  
    stprice = "dbl_price <= "+ rnt[:dbl_price]
    @rents = @rents.where(stprice)                                   
    @rnt = Rent.new
    render 'query.html.erb'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_params
      params.require(:rent).permit(:name, :address, :rooms, :bathrooms, :dbl_price, :tpl_price, :qpl_price, :home, :X, :Y, :features, :tripadvisor,:location_id,:language_ids=>[],:facility_ids=>[],:service_ids=>[])
    end
end
