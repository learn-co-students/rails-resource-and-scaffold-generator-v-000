class ARticlesController < ApplicationController
  before_action :set_a_rticle, only: [:show, :edit, :update, :destroy]

  # GET /a_rticles
  # GET /a_rticles.json
  def index
    @a_rticles = ARticle.all
  end

  # GET /a_rticles/1
  # GET /a_rticles/1.json
  def show
  end

  # GET /a_rticles/new
  def new
    @a_rticle = ARticle.new
  end

  # GET /a_rticles/1/edit
  def edit
  end

  # POST /a_rticles
  # POST /a_rticles.json
  def create
    @a_rticle = ARticle.new(a_rticle_params)

    respond_to do |format|
      if @a_rticle.save
        format.html { redirect_to @a_rticle, notice: 'A rticle was successfully created.' }
        format.json { render :show, status: :created, location: @a_rticle }
      else
        format.html { render :new }
        format.json { render json: @a_rticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_rticles/1
  # PATCH/PUT /a_rticles/1.json
  def update
    respond_to do |format|
      if @a_rticle.update(a_rticle_params)
        format.html { redirect_to @a_rticle, notice: 'A rticle was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_rticle }
      else
        format.html { render :edit }
        format.json { render json: @a_rticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_rticles/1
  # DELETE /a_rticles/1.json
  def destroy
    @a_rticle.destroy
    respond_to do |format|
      format.html { redirect_to a_rticles_url, notice: 'A rticle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_rticle
      @a_rticle = ARticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_rticle_params
      params.require(:a_rticle).permit(:title, :body)
    end
end
