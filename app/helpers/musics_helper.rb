module MusicsHelper

  def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

  def thumbnail(youtube_url)
    youtube_id = youtube_url.split("=").last
    image_tag("http://img.youtube.com/vi/#{youtube_id}/0.jpg")
  end

  def emoji(signpost_ids)
    puts signpost_ids
    if (signpost_ids == 1)
      'happy'
    elsif (signpost_ids == 2)
      'sad'
    elsif (signpost_ids == 3)
      'emo'
    else
      'anger'
    end
  end

end
