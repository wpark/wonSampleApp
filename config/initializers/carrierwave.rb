CarrierWave.configure do |config|
  config.dropbox_access_token = ENV["FILESHARE_TOKEN"]
end