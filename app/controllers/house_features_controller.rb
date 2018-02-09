class HouseFeaturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_house_feature, only: [:show, :edit, :update, :destroy]

  # GET /house_features
  # GET /house_features.json
  def index
    @house_features = HouseFeature.all
  end

  # GET /house_features/1
  # GET /house_features/1.json
  def show
  end

  # GET /house_features/new
  def new
    @house_feature = HouseFeature.new
  end

  # GET /house_features/1/edit
  def edit
  end

  # POST /house_features
  # POST /house_features.json
  def create
    @house_feature = HouseFeature.new(house_feature_params)

    respond_to do |format|
      if @house_feature.save
        format.html { redirect_to @house_feature, notice: 'House feature was successfully created.' }
        format.json { render :show, status: :created, location: @house_feature }
      else
        format.html { render :new }
        format.json { render json: @house_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /house_features/1
  # PATCH/PUT /house_features/1.json
  def update
    respond_to do |format|
      if @house_feature.update(house_feature_params)
        format.html { redirect_to @house_feature, notice: 'House feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @house_feature }
      else
        format.html { render :edit }
        format.json { render json: @house_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /house_features/1
  # DELETE /house_features/1.json
  def destroy
    @house_feature.destroy
    respond_to do |format|
      format.html { redirect_to house_features_url, notice: 'House feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_feature
      @house_feature = HouseFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_feature_params
      params.require(:house_feature).permit(:house_id, :feature_id)
    end
end
