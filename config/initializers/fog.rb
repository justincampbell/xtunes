CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['S3_KEY'], # required
    :aws_secret_access_key  => ENV['S3_SECRET'] # required
  }
  config.fog_directory  = 'xtunes-alex'                     # required
 # config.fog_host       = 'https://s3.amazonaws.com'            # optional, defaults to nil
 # config.fog_public     = false                                   # optional, defaults to true
end