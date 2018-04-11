CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIJ5ZFBQW6OMQHBYA',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'us-west-1',  # optional, defaults to 'us-east-1'
    :path_style             => true
  }
  case Rails.env
    when 'production'
      config.fog_directory = 'wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/wonsample'

    when 'development'
      config.fog_directory = 'wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/wonsample'

    when 'test'
      config.fog_directory = 'test.wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/test.wonsample'
  end
end