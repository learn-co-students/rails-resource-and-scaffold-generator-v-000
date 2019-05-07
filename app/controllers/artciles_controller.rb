class ArtcilesController < ApplicationController
  before_action :set_artcile, only: [:show, :edit, :update, :destroy]

  # GET /artciles
  # GET /artciles.json
  def index
    @artciles = Artcile.all
  end

  # GET /artciles/1
  # GET /artciles/1.json
  def show
  end

  # GET /artciles/new
  def new
    @artcile = Artcile.new
  end

  # GET /artciles/1/edit
  def edit
  end

  # POST /artciles
  # POST /artciles.json
  def create
    @artcile = Artcile.new(artcile_params)

    respond_to do |format|
      if @artcile.save
        format.html { redirect_to @artcile, notice: 'Artcile was successfully created.' }
        format.json { render :show, status: :created, location: @artcile }
      else
        format.html { render :new }
        format.json { render json: @artcile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artciles/1
  # PATCH/PUT /artciles/1.json
  def update
    respond_to do |format|
      if @artcile.update(artcile_params)
        format.html { redirect_to @artcile, notice: 'Artcile was successfully updated.' }
        format.json { render :show, status: :ok, location: @artcile }
      else
        format.html { render :edit }
        format.json { render json: @artcile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artciles/1
  # DELETE /artciles/1.json
  def destroy
    @artcile.destroy
    respond_to do |format|
      format.html { redirect_to artciles_url, notice: 'Artcile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artcile
      @artcile = Artcile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artcile_params
      params.require(:artcile).permit(:title, :body)
    end
end
