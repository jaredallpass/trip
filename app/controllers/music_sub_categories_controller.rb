class MusicSubCategoriesController < ApplicationController
  before_action :set_music_sub_category, only: [:show, :edit, :update, :destroy]

  # GET /music_sub_categories
  # GET /music_sub_categories.json
  def index
    @music_sub_categories = MusicSubCategory.all
  end

  # GET /music_sub_categories/1
  # GET /music_sub_categories/1.json
  def show
  end

  # GET /music_sub_categories/new
  def new
    @music_sub_category = MusicSubCategory.new
  end

  # GET /music_sub_categories/1/edit
  def edit
  end

  # POST /music_sub_categories
  # POST /music_sub_categories.json
  def create
    @music_sub_category = MusicSubCategory.new(music_sub_category_params)

    respond_to do |format|
      if @music_sub_category.save
        format.html { redirect_to @music_sub_category, notice: 'Music sub category was successfully created.' }
        format.json { render :show, status: :created, location: @music_sub_category }
      else
        format.html { render :new }
        format.json { render json: @music_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /music_sub_categories/1
  # PATCH/PUT /music_sub_categories/1.json
  def update
    respond_to do |format|
      if @music_sub_category.update(music_sub_category_params)
        format.html { redirect_to @music_sub_category, notice: 'Music sub category was successfully updated.' }
        format.json { render :show, status: :ok, location: @music_sub_category }
      else
        format.html { render :edit }
        format.json { render json: @music_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_sub_categories/1
  # DELETE /music_sub_categories/1.json
  def destroy
    @music_sub_category.destroy
    respond_to do |format|
      format.html { redirect_to music_sub_categories_url, notice: 'Music sub category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_sub_category
      @music_sub_category = MusicSubCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_sub_category_params
      params.fetch(:music_sub_category, {})
    end
end
