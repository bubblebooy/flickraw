require 'flickraw'

# Get the list of the 20 most recent 'interesting photos'

flickr = FlickRaw::Flickr.new
list = flickr.interestingness.getList :per_page => 20
list.each { |photo| puts "'#{photo.title}' id=#{photo.id} secret=#{photo.secret}" }
