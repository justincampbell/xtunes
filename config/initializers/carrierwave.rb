CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['aws_access_key'], # required
    :aws_secret_access_key  => ENV['aws_secret_key'] # required
  }
  config.fog_directory  = 'xtunes-alex'                     # required
 # config.fog_host       = 'https://s3.amazonaws.com'            # optional, defaults to nil
 config.fog_public     = false                                   # optional, defaults to true
end