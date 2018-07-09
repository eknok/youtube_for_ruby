require 'google/apis/youtube_v3'
require 'active_support/all'
require 'dotenv'
Dotenv.load

def find_videos(keyword)
  service = Google::Apis::YoutubeV3::YouTubeService.new
  service.key = ENV["GOOGLE_API_KEY"]

  next_page_token = nil
  begin
    opt = {
      q: keyword,
      type: 'video',
      max_results: 10,
      order: :date,
      page_token: next_page_token,
    }
    results = service.list_searches(:snippet, opt)
    results.items.each do |item|
      snippet = item.snippet
      puts "\"#{snippet.title}\" by #{snippet.channel_title}"
    end

    next_page_token = results.next_page_token
  end 
end

find_videos('HIKAKIN')