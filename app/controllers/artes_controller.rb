class ArtesController < ApplicationController
  before_action :set_arte, only: [:show, :edit, :update, :destroy]

  # GET /artes
  # GET /artes.json
  def index
    @artes = Arte.all
  end

  # GET /artes/1
  # GET /artes/1.json
  def show
  end

  # GET /artes/new
  def new
    @arte = Arte.new
  end

  # GET /artes/1/edit
  def edit
  end

  # POST /artes
  # POST /artes.json
  def create
    @arte = Arte.new(arte_params)

    respond_to do |format|
      if @arte.save
        format.html { redirect_to @arte, notice: 'Arte was successfully created.' }
        format.json { render :show, status: :created, location: @arte }
      else
        format.html { render :new }
        format.json { render json: @arte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artes/1
  # PATCH/PUT /artes/1.json
  def update
    respond_to do |format|
      if @arte.update(arte_params)
        format.html { redirect_to @arte, notice: 'Arte was successfully updated.' }
        format.json { render :show, status: :ok, location: @arte }
      else
        format.html { render :edit }
        format.json { render json: @arte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artes/1
  # DELETE /artes/1.json
  def destroy
    @arte.destroy
    respond_to do |format|
      format.html { redirect_to artes_url, notice: 'Arte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arte
      @arte = Arte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arte_params
      params.require(:arte).permit(:title, :body)
    end
end
