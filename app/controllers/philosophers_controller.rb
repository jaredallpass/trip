class PhilosophersController < ApplicationController
  before_action :set_philosopher, only: [:show, :edit, :update, :destroy]

  # GET /philosophers
  # GET /philosophers.json
  def index
    @philosophers = Philosopher.all
  end

  # GET /philosophers/1
  # GET /philosophers/1.json
  def show
  end

  # GET /philosophers/new
  def new
    @philosopher = Philosopher.new
  end

  # GET /philosophers/1/edit
  def edit
  end

  # POST /philosophers
  # POST /philosophers.json
  def create
    @philosopher = Philosopher.new(philosopher_params)

    respond_to do |format|
      if @philosopher.save
        format.html { redirect_to @philosopher, notice: 'Philosopher was successfully created.' }
        format.json { render :show, status: :created, location: @philosopher }
      else
        format.html { render :new }
        format.json { render json: @philosopher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /philosophers/1
  # PATCH/PUT /philosophers/1.json
  def update
    respond_to do |format|
      if @philosopher.update(philosopher_params)
        format.html { redirect_to @philosopher, notice: 'Philosopher was successfully updated.' }
        format.json { render :show, status: :ok, location: @philosopher }
      else
        format.html { render :edit }
        format.json { render json: @philosopher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /philosophers/1
  # DELETE /philosophers/1.json
  def destroy
    @philosopher.destroy
    respond_to do |format|
      format.html { redirect_to philosophers_url, notice: 'Philosopher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_philosopher
      @philosopher = Philosopher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def philosopher_params
      params.require(:philosopher).permit(:name)
    end
end
