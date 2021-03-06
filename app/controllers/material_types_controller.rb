class MaterialTypesController < ApplicationController
  # GET /material_types
  # GET /material_types.json
  def index
    @material_types = MaterialType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @material_types }
    end
  end

  # GET /material_types/1
  # GET /material_types/1.json
  def show
    @material_type = MaterialType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material_type }
    end
  end

  # GET /material_types/new
  # GET /material_types/new.json
  def new
    @material_type = MaterialType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material_type }
    end
  end

  # GET /material_types/1/edit
  def edit
    @material_type = MaterialType.find(params[:id])
  end

  # POST /material_types
  # POST /material_types.json
  def create
    @material_type = MaterialType.new(params[:material_type])

    respond_to do |format|
      if @material_type.save
        format.html { redirect_to @material_type, notice: 'Material type was successfully created.' }
        format.json { render json: @material_type, status: :created, location: @material_type }
      else
        format.html { render action: "new" }
        format.json { render json: @material_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /material_types/1
  # PUT /material_types/1.json
  def update
    @material_type = MaterialType.find(params[:id])

    respond_to do |format|
      if @material_type.update_attributes(params[:material_type])
        format.html { redirect_to @material_type, notice: 'Material type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @material_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_types/1
  # DELETE /material_types/1.json
  def destroy
    @material_type = MaterialType.find(params[:id])
    @material_type.destroy

    respond_to do |format|
      format.html { redirect_to material_types_url }
      format.json { head :no_content }
    end
  end
end
