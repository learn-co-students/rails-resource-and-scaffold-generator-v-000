class AresController < ApplicationController
  before_action :set_are, only: [:show, :edit, :update, :destroy]

  # GET /ares
  # GET /ares.json
  def index
    @ares = Are.all
  end

  # GET /ares/1
  # GET /ares/1.json
  def show
  end

  # GET /ares/new
  def new
    @are = Are.new
  end

  # GET /ares/1/edit
  def edit
  end

  # POST /ares
  # POST /ares.json
  def create
    @are = Are.new(are_params)

    respond_to do |format|
      if @are.save
        format.html { redirect_to @are, notice: 'Are was successfully created.' }
        format.json { render :show, status: :created, location: @are }
      else
        format.html { render :new }
        format.json { render json: @are.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ares/1
  # PATCH/PUT /ares/1.json
  def update
    respond_to do |format|
      if @are.update(are_params)
        format.html { redirect_to @are, notice: 'Are was successfully updated.' }
        format.json { render :show, status: :ok, location: @are }
      else
        format.html { render :edit }
        format.json { render json: @are.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ares/1
  # DELETE /ares/1.json
  def destroy
    @are.destroy
    respond_to do |format|
      format.html { redirect_to ares_url, notice: 'Are was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_are
      @are = Are.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def are_params
      params.require(:are).permit(:title, :body)
    end
end
