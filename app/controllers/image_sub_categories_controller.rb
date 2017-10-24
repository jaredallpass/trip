class ImageSubCategoriesController < ApplicationController
  before_action :set_image_sub_category, only: [:show, :edit, :update, :destroy]

  # GET /image_sub_categories
  # GET /image_sub_categories.json
  def index
    @image_sub_categories = ImageSubCategory.all
  end

  # GET /image_sub_categories/1
  # GET /image_sub_categories/1.json
  def show
  end

  # GET /image_sub_categories/new
  def new
    @image_sub_category = ImageSubCategory.new
  end

  # GET /image_sub_categories/1/edit
  def edit
  end

  # POST /image_sub_categories
  # POST /image_sub_categories.json
  def create
    @image_sub_category = ImageSubCategory.new(image_sub_category_params)

    respond_to do |format|
      if @image_sub_category.save
        format.html { redirect_to @image_sub_category, notice: 'Image sub category was successfully created.' }
        format.json { render :show, status: :created, location: @image_sub_category }
      else
        format.html { render :new }
        format.json { render json: @image_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_sub_categories/1
  # PATCH/PUT /image_sub_categories/1.json
  def update
    respond_to do |format|
      if @image_sub_category.update(image_sub_category_params)
        format.html { redirect_to @image_sub_category, notice: 'Image sub category was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_sub_category }
      else
        format.html { render :edit }
        format.json { render json: @image_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_sub_categories/1
  # DELETE /image_sub_categories/1.json
  def destroy
    @image_sub_category.destroy
    respond_to do |format|
      format.html { redirect_to image_sub_categories_url, notice: 'Image sub category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_sub_category
      @image_sub_category = ImageSubCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_sub_category_params
      params.fetch(:image_sub_category, {})
    end
end
