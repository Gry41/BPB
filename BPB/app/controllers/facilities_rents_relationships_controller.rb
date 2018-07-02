class FacilitiesRentsRelationshipsController < ApplicationController
  before_action :set_facilities_rents_relationship, only: [:show, :edit, :update, :destroy]

  # GET /facilities_rents_relationships
  # GET /facilities_rents_relationships.json
  def index
    @facilities_rents_relationships = FacilitiesRentsRelationship.all
  end

  # GET /facilities_rents_relationships/1
  # GET /facilities_rents_relationships/1.json
  def show
  end

  # GET /facilities_rents_relationships/new
  def new
    @facilities_rents_relationship = FacilitiesRentsRelationship.new
  end

  # GET /facilities_rents_relationships/1/edit
  def edit
  end

  # POST /facilities_rents_relationships
  # POST /facilities_rents_relationships.json
  def create
    @facilities_rents_relationship = FacilitiesRentsRelationship.new(facilities_rents_relationship_params)

    respond_to do |format|
      if @facilities_rents_relationship.save
        format.html { redirect_to @facilities_rents_relationship, notice: 'Facilities rents relationship was successfully created.' }
        format.json { render :show, status: :created, location: @facilities_rents_relationship }
      else
        format.html { render :new }
        format.json { render json: @facilities_rents_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facilities_rents_relationships/1
  # PATCH/PUT /facilities_rents_relationships/1.json
  def update
    respond_to do |format|
      if @facilities_rents_relationship.update(facilities_rents_relationship_params)
        format.html { redirect_to @facilities_rents_relationship, notice: 'Facilities rents relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @facilities_rents_relationship }
      else
        format.html { render :edit }
        format.json { render json: @facilities_rents_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facilities_rents_relationships/1
  # DELETE /facilities_rents_relationships/1.json
  def destroy
    @facilities_rents_relationship.destroy
    respond_to do |format|
      format.html { redirect_to facilities_rents_relationships_url, notice: 'Facilities rents relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facilities_rents_relationship
      @facilities_rents_relationship = FacilitiesRentsRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facilities_rents_relationship_params
      params.fetch(:facilities_rents_relationship, {})
    end
end
