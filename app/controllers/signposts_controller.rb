class SignpostsController < ApplicationController
  before_action :set_signpost, only: [:show]

  # GET /signposts
  # GET /signposts.json
  def index
    @signposts = Signpost.all

  end

  # GET /signposts/1
  # GET /signposts/1.json
  def show

    @musics=Signpost.find(params[:id]).musics

  end

  # GET /signposts/new
  def new
    @signpost = Signpost.new
  end

  # GET /signposts/1/edit
  def edit
  end

  # POST /signposts
  # POST /signposts.json
  def create
    @signpost = Signpost.new(signpost_params)

    respond_to do |format|
      if @signpost.save
        format.html { redirect_to @signpost, notice: 'Signpost was successfully created.' }
        format.json { render :show, status: :created, location: @signpost }
      else
        format.html { render :new }
        format.json { render json: @signpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signposts/1
  # PATCH/PUT /signposts/1.json
  def update
    respond_to do |format|
      if @signpost.update(signpost_params)
        format.html { redirect_to @signpost, notice: 'Signpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @signpost }
      else
        format.html { render :edit }
        format.json { render json: @signpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signposts/1
  # DELETE /signposts/1.json
  def destroy
    @signpost.destroy
    respond_to do |format|
      format.html { redirect_to signposts_url, notice: 'Signpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signpost
      @signpost = Signpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def signpost_params
      # params.fetch(:signpost, {})
      params.require(:signpost).permit(:label, :music_id)
    end

end
