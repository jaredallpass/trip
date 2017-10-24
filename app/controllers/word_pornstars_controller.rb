class WordPornstarsController < ApplicationController
  before_action :set_word_pornstar, only: [:show, :edit, :update, :destroy]

  # GET /word_pornstars
  # GET /word_pornstars.json
  def index
    @word_pornstars = WordPornstar.all
  end

  # GET /word_pornstars/1
  # GET /word_pornstars/1.json
  def show
  end

  # GET /word_pornstars/new
  def new
    @word_pornstar = WordPornstar.new
  end

  # GET /word_pornstars/1/edit
  def edit
  end

  # POST /word_pornstars
  # POST /word_pornstars.json
  def create
    @word_pornstar = WordPornstar.new(word_pornstar_params)

    respond_to do |format|
      if @word_pornstar.save
        format.html { redirect_to @word_pornstar, notice: 'Word pornstar was successfully created.' }
        format.json { render :show, status: :created, location: @word_pornstar }
      else
        format.html { render :new }
        format.json { render json: @word_pornstar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_pornstars/1
  # PATCH/PUT /word_pornstars/1.json
  def update
    respond_to do |format|
      if @word_pornstar.update(word_pornstar_params)
        format.html { redirect_to @word_pornstar, notice: 'Word pornstar was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_pornstar }
      else
        format.html { render :edit }
        format.json { render json: @word_pornstar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_pornstars/1
  # DELETE /word_pornstars/1.json
  def destroy
    @word_pornstar.destroy
    respond_to do |format|
      format.html { redirect_to word_pornstars_url, notice: 'Word pornstar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_pornstar
      @word_pornstar = WordPornstar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_pornstar_params
      params.fetch(:word_pornstar, {})
    end
end
