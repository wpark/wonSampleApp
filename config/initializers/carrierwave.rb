CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAI6QKI4SMKOLLBX6A',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'us-west-1'  # optional, defaults to 'us-east-1'
  }
  case Rails.env
    when 'production'
      config.fog_directory = 'wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/wonsample'

    when 'development'
      config.fog_directory = 'dev.wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/dev.wonsample'

    when 'test'
      config.fog_directory = 'test.wonsample'
      config.asset_host = 'https://s3-us-west-1.amazonaws.com/test.wonsample'
  end
end