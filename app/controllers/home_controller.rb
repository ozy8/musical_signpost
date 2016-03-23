class HomeController < ApplicationController
    def index
      @musics = Music.all
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
