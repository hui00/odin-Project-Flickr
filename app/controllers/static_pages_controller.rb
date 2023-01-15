class StaticPagesController < ApplicationController
  def homepage
    require "flickr"
    @flickr = Flickr.new(ENV["API_KEY"], ENV["API_SECRET"])
    # @list = flickr.photos.search(user_id: ENV["FLICKR_USER_ID"], per_page: 10)

    @flickr_options = ["wrc-213", "75571860@N06", "53878984@N05"]
    if params[:flickr_id]
      # Get the photos from the specified user
      @photos = @flickr.photos.search(user_id: params[:flickr_id])
    end
  end
end
