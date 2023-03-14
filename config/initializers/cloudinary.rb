# config/initializers/cloudinary.rb

# The below doesn't look like it's on the Le Wagon's intructions
Cloudinary.config do |config|
  config.cloud_name = ENV['CLOUDINARY_URL'].match(/cloudinary:\/\/(\w+):(\w+)@(\w+)/)[3]
  config.api_key = ENV['CLOUDINARY_URL'].match(/cloudinary:\/\/(\w+):(\w+)@(\w+)/)[1]
  config.api_secret = ENV['CLOUDINARY_URL'].match(/cloudinary:\/\/(\w+):(\w+)@(\w+)/)[2]
  config.secure = true
  config.cdn_subdomain = true
end
