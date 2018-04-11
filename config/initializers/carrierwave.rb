CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIJYWI7KYSNAJYZ6A',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'us-west-1',  # optional, defaults to 'us-east-1'
    :path_style             => true
  }
  case Rails.env
    when 'production'
      config.fog_directory = 'wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/#{config.fog_directory}'

    when 'development'
      config.fog_directory = 'wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/#{config.fog_directory}'

    when 'test'
      config.fog_directory = 'test.wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/test.wonsample'
  end
end