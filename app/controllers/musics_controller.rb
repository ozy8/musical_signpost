class MusicsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_music, only: [:show, :edit, :update, :destroy]

  # GET /musics
  # GET /musics.json
  def index
    @musics = Music.all
  end

  # GET /musics/1
  # GET /musics/1.json
  def show
    @getsignpost = Music.find(params[:id]).signposts[0].id
    # print @getsignpost[0].id
  end

  # GET /musics/new
  def new
    @music = Music.new
    @signposts = Signpost.all
  end

  # GET /musics/1/edit
  def edit
    @music = Music.new
    @signposts = Signpost.all
  end

  # POST /musics
  # POST /musics.json
  def create
    @music = Music.new(music_params)
    @music.user_id = current_user.id

    print @music.inspect

    respond_to do |format|
      if @music.save
        format.html { redirect_to @music }
        format.json { render :show, status: :created, location: @music }
      else
        format.html { render :new }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musics/1
  # PATCH/PUT /musics/1.json
  def update
    respond_to do |format|
      if @music.update(music_params)
        format.html { redirect_to @music, notice: 'Music was successfully updated.' }
        format.json { render :show, status: :ok, location: @music }
      else
        format.html { render :edit }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music.destroy
    respond_to do |format|
      format.html { redirect_to musics_url, notice: 'Music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:title, :youtube_url, :feeling, :signpost_ids=> [])
    end


end
