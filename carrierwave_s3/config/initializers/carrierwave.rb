CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'xxx',       # required
    :aws_secret_access_key  => 'yyy',       # required
    :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'name_of_your_aws_bucket' # required
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
end

if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
else
  CarrierWave.configure do |config|
    config.storage = :fog
  end
end
