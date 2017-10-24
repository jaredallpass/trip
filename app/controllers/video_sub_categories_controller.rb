class VideoSubCategoriesController < ApplicationController
  before_action :set_video_sub_category, only: [:show, :edit, :update, :destroy]

  # GET /video_sub_categories
  # GET /video_sub_categories.json
  def index
    @video_sub_categories = VideoSubCategory.all
  end

  # GET /video_sub_categories/1
  # GET /video_sub_categories/1.json
  def show
  end

  # GET /video_sub_categories/new
  def new
    @video_sub_category = VideoSubCategory.new
  end

  # GET /video_sub_categories/1/edit
  def edit
  end

  # POST /video_sub_categories
  # POST /video_sub_categories.json
  def create
    @video_sub_category = VideoSubCategory.new(video_sub_category_params)

    respond_to do |format|
      if @video_sub_category.save
        format.html { redirect_to @video_sub_category, notice: 'Video sub category was successfully created.' }
        format.json { render :show, status: :created, location: @video_sub_category }
      else
        format.html { render :new }
        format.json { render json: @video_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_sub_categories/1
  # PATCH/PUT /video_sub_categories/1.json
  def update
    respond_to do |format|
      if @video_sub_category.update(video_sub_category_params)
        format.html { redirect_to @video_sub_category, notice: 'Video sub category was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_sub_category }
      else
        format.html { render :edit }
        format.json { render json: @video_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_sub_categories/1
  # DELETE /video_sub_categories/1.json
  def destroy
    @video_sub_category.destroy
    respond_to do |format|
      format.html { redirect_to video_sub_categories_url, notice: 'Video sub category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_sub_category
      @video_sub_category = VideoSubCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_sub_category_params
      params.fetch(:video_sub_category, {})
    end
end
