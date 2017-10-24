class WordPornsController < ApplicationController
  before_action :set_word_porn, only: [:show, :edit, :update, :destroy]

  # GET /word_porns
  # GET /word_porns.json
  def index
    @word_porns = WordPorn.all
  end

  # GET /word_porns/1
  # GET /word_porns/1.json
  def show
  end

  # GET /word_porns/new
  def new
    @word_porn = WordPorn.new
  end

  # GET /word_porns/1/edit
  def edit
  end

  # POST /word_porns
  # POST /word_porns.json
  def create
    @word_porn = WordPorn.new(word_porn_params)

    respond_to do |format|
      if @word_porn.save
        format.html { redirect_to @word_porn, notice: 'Word porn was successfully created.' }
        format.json { render :show, status: :created, location: @word_porn }
      else
        format.html { render :new }
        format.json { render json: @word_porn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_porns/1
  # PATCH/PUT /word_porns/1.json
  def update
    respond_to do |format|
      if @word_porn.update(word_porn_params)
        format.html { redirect_to @word_porn, notice: 'Word porn was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_porn }
      else
        format.html { render :edit }
        format.json { render json: @word_porn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_porns/1
  # DELETE /word_porns/1.json
  def destroy
    @word_porn.destroy
    respond_to do |format|
      format.html { redirect_to word_porns_url, notice: 'Word porn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_porn
      @word_porn = WordPorn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_porn_params
      params.fetch(:word_porn, {})
    end
end
