module HomeHelper
  def shownewest(youtube_url)
    youtube_id = youtube_url.split("=").last
    image_tag("http://img.youtube.com/vi/#{youtube_id}/0.jpg")
  end

end
